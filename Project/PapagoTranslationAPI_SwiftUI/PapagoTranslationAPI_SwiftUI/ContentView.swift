//
//  ContentView.swift
//  PapagoTranslationAPI_SwiftUI
//
//  Created by 이성현 on 2023/10/18.
//

import SwiftUI


extension Bundle {
    var Client_ID : String? {
        guard let file = self.path(forResource: "TranslateInfo", ofType: "plist"),
              let resource = NSDictionary(contentsOfFile: file),
              let key = resource["Client_id"] as? String else {
            print("에러 발생")
            return nil
        }
        return key
    }
    var Client_SECRET : String? {
        guard let file = self.path(forResource: "TranslateInfo", ofType: "plist"),
              let resource = NSDictionary(contentsOfFile: file),
              let key = resource["Client_secret"] as? String else {
            print("에러 발생")
            return nil
        }
        return key
    }
}

struct ContentView: View {
    
    @State private var inputText = ""
    @State private var targetLanguage = "en"
    @State private var translatedText : String?
    @State private var isLoading = false
    private var CLIENT_ID = Bundle.main.Client_ID!
    private var CLIENT_SECRET = Bundle.main.Client_SECRET!
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                
                TextField("번역할 텍스트 입력", text: $inputText)
                    .textFieldStyle(.roundedBorder)
                    .font(.title2)
                Picker("대상 언어", selection: $targetLanguage, content: {
                    Text("영어").tag("en")
                    Text("스페인어").tag("es")
                    Text("프랑스어").tag("fr")
                }) // Picker
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Button("번역하기"){
                    translate()
                }
                if isLoading{
                    ProgressView()
                }
                if let translatedText = translatedText {
                    Text("번역 결과 : \(translatedText)")
                        .padding()
                }
                
            }
            .navigationTitle("파파고 번역")
        }
    }
    
    func translateText(text: String, targetLanguage: String, completionHandler: @escaping (String?, Error?) -> Void) {
            let apiURL = "https://openapi.naver.com/v1/papago/n2mt"
            let headers = [
                "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
                "X-Naver-Client-Id": CLIENT_ID,
                "X-Naver-Client-Secret": CLIENT_SECRET
            ]
            
            let parameters = "source=ko&target=\(targetLanguage)&text=\(text)"
            
            if let url = URL(string: apiURL) {
                var request = URLRequest(url: url)
                request.httpMethod = "POST"
                request.allHTTPHeaderFields = headers
                request.httpBody = parameters.data(using: .utf8)
                
                let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    if let error = error {
                        completionHandler(nil, error)
                    } else if let data = data {
                        do {
                            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                               let translatedText = json["message"] as? [String: Any],
                               let translatedTextString = translatedText["result"] as? [String: Any],
                               let text = translatedTextString["translatedText"] as? String {
                                completionHandler(text, nil)
                            }
                        } catch {
                            completionHandler(nil, error)
                        }
                    }
                }
                
                task.resume()
            }
        }

        func translate() {
            isLoading = true
            translatedText = nil

            translateText(text: inputText, targetLanguage: targetLanguage) { translation, error in
                DispatchQueue.main.async {
                    isLoading = false
                    if let translation = translation {
                        translatedText = translation
                    } else if let error = error {
                        print("에러: \(error)")
                    }
                }
            }
        }
    
}

#Preview {
    ContentView()
}

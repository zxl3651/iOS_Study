//
//  MyWebview.swift
//  SwiftUI_Webview_tutorial_#2
//
//  Created by 이성현 on 2023/10/14.
//

import SwiftUI
import WebKit

// UIKit 의 UIView를 사용할 수 있도록 한다.
// UIViewControllerRepresentable

struct MyWebview: UIViewRepresentable {
    
    
    var urlToLoad : String // 열려고 하는 url 주소
    
    // UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
        }
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // 업데이트 UIView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
}

#Preview {
    MyWebview(urlToLoad: "https://www.naver.com")
}

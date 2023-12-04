//
//  ViewController.swift
//  LiveSpeechDemo
//
//  Created by 이성현 on 2023/12/04.
//

import UIKit
import Speech

class ViewController: UIViewController {

    @IBOutlet weak var transcribeBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    @IBOutlet weak var myTextView: UITextView!
    
    private let speechRecongnizer = SFSpeechRecognizer(locale: Locale(identifier: "ko-KR"))
    
    private var speechRecognitionRequest : SFSpeechAudioBufferRecognitionRequest?
    private var speechRecognitionTask : SFSpeechRecognitionTask?
    private let audioEngine = AVAudioEngine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startTranscribing(_ sender: Any) {
        transcribeBtn.isEnabled = false
        stopBtn.isEnabled = true
        
        do {
            try startSession()
        } catch {
            
        }
    }
    
    func startSession() throws {
        if let recognitionTast = speechRecognitionTask {
            recognitionTast.cancel()
            self.speechRecognitionTask = nil
        }
        
        let audioSession = AVAudioSession.sharedInstance()
        try audioSession.setCategory(.record, mode: .default)
        
        speechRecognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        
        guard let recognitionRequest = speechRecognitionRequest else {
            fatalError("SFSpeechAudioBufferRecognitionRequest create failed.")
        }
        
        let inputNode = audioEngine.inputNode
        recognitionRequest.shouldReportPartialResults = true
        
        speechRecongnizer?.recognitionTask(with: recognitionRequest) { result, error in
            var finished = false
            
            if let result = result {
                self.myTextView.text = result.bestTranscription.formattedString
                finished = result.isFinal
            }
            
            if error != nil || finished {
                self.audioEngine.stop()
                inputNode.removeTap(onBus: 0)
                
                self.speechRecognitionRequest = nil
                self.speechRecognitionTask = nil
                
                self.transcribeBtn.isEnabled = true
            }
        }
        
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer: AVAudioPCMBuffer, when: AVAudioTime) in
            self.speechRecognitionRequest?.append(buffer)
        }
        
        audioEngine.prepare()
        try audioEngine.start()
    }
    
    @IBAction func stopTranscribing(_ sender: Any) {
        if audioEngine.isRunning {
            audioEngine.stop()
            speechRecognitionRequest?.endAudio()
            
            transcribeBtn.isEnabled = true
            stopBtn.isEnabled = false
        }
    }
    
}


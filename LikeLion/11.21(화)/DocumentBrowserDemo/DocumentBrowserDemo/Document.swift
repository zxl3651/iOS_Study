//
//  Document.swift
//  DocumentBrowserDemo
//
//  Created by 이성현 on 2023/11/21.
//

import UIKit

class Document: UIDocument {
    
    var userText : String? = ""
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        if let content = userText {
            let length = content.lengthOfBytes(using: String.Encoding.utf8) // utf8로 인코딩하고 content의 byte 길이를 구해준다.
            return NSData(bytes: content, length: length)
        } else {
            return Data()
        }
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load your document from contents
        if let userContent = contents as? Data {
            userText = NSString(bytes: (contents as AnyObject).bytes, length: userContent.count, encoding: String.Encoding.utf8.rawValue) as String?
        }
    }
}


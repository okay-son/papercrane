//
//  TextArea.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
        
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty {
                Text(placeholder)
                .foregroundColor(Color(.placeholderText))
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}


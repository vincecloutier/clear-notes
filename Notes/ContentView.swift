//
//  ContentView.swift
//  Notes
//
//  Created by Vincent Cloutier on 2022-08-11.
//

import SwiftUI

struct ContentView: View {
    @State private var fullText: String = "This is some editable text..."

    var body: some View {
        TextEditor(text: $fullText)
            .frame(minWidth: 250, maxWidth: 500, minHeight: 250, maxHeight: 500)
    }
}

// disallow fullscreen
// need to add user defaults
// need to make background transparent

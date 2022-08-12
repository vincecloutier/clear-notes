//
//  ContentView.swift
//  Notes
//
//  Created by Vincent Cloutier on 2022-08-11.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = "test"
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .background(ClearEffect())
        }
        .frame(minWidth: 250, minHeight: 250)
    }
}

// need to add user defaults
// hide fucking scroll bar

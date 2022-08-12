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
            TextEditor(text: $text)
                .background(ClearEffect())
                .frame(minWidth: 400, minHeight: 400)
    }
}

// need to add user defaults

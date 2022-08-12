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
            CustomizableTextEditor(text: $text)
                .background(ClearEffect())
        }
        .frame(width: 400, height: 400)
    }
}

// disallow fullscreen
// need to add user defaults
// hide fucking scroll bar

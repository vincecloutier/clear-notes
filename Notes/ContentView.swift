//
//  ContentView.swift
//  Notes
//
//  Created by Vincent Cloutier on 2022-08-11.
//

import SwiftUI

struct ContentView: View {    
    @AppStorage("tapCount") private var text = ""
    var body: some View {
            TextEditor(text: $text)
                .background(ClearEffect())
                .frame(minWidth: 400, minHeight: 400)
    }
}


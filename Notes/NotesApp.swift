//
//  NotesApp.swift
//  Notes
//
//  Created by Vincent Cloutier on 2022-08-11.
//

import SwiftUI

struct ClearEffect: NSViewRepresentable {
  func makeNSView(context: Self.Context) -> NSView { return NSVisualEffectView() }
  func updateNSView(_ nsView: NSView, context: Context) { }
}

@main
struct NotesApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .background(ClearEffect().ignoresSafeArea())
    }
    .windowStyle(.hiddenTitleBar)
  }
}

//
//  NotesApp.swift
//  Notes
//
//  Created by Vincent Cloutier on 2022-08-11.
//

import SwiftUI

struct VisualEffect: NSViewRepresentable {
  func makeNSView(context: Self.Context) -> NSView { return NSVisualEffectView() }
  func updateNSView(_ nsView: NSView, context: Context) { }
}

@main
struct VisualEffectApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .background(VisualEffect().ignoresSafeArea())
    }
    .windowStyle(.hiddenTitleBar)
  }
}

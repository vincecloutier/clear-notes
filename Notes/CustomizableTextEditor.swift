//
//  CustomizableTextEditor.swift
//  Notes
//
//  Created by Vincent Cloutier on 2022-08-11.
//

import Foundation
import SwiftUI

struct CustomizableTextEditor: View {
    @Binding var text: String
    var body: some View {
        GeometryReader { geometry in
            NSScrollableTextViewRepresentable(text: $text, size: geometry.size)
        }
    }
}

struct NSScrollableTextViewRepresentable: NSViewRepresentable {
    typealias Representable = Self
        @Binding var text: String
    var size: CGSize
        @Environment(\.undoManager) var undoManger
        func makeNSView(context: Context) -> NSScrollView {
        let scrollView = NSTextView.scrollableTextView()
        let nsTextView = scrollView.documentView as! NSTextView
        nsTextView.delegate = context.coordinator
        nsTextView.drawsBackground = false
        nsTextView.allowsUndo = true
        return scrollView
    }
    
    func updateNSView(_ scrollView: NSScrollView, context: Context) {
        guard let nsTextView = scrollView.documentView as? NSTextView else {
            return
        }
        nsTextView.minSize = size
        nsTextView.string = text
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator: NSObject, NSTextViewDelegate {
        var parent: Representable // store reference to parent
        
        init(_ textEditor: Representable) {
            self.parent = textEditor
        }
        func textDidChange(_ notification: Notification) {
            guard notification.name == NSText.didChangeNotification,
                let nsTextView = notification.object as? NSTextView else {
                return
            }
            parent.text = nsTextView.string
        }
        func undoManager(for view: NSTextView) -> UndoManager? {
            parent.undoManger
        }
    }
}

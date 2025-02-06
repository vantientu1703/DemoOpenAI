//
//  ContentView.swift
//  Demo
//
//  Created by Sihao Lu on 4/7/23.
//

import DemoChat
import OpenAI
import SwiftUI

struct ContentView: View {
    @ObservedObject var chatStore: ChatStore
    @ObservedObject var assistantStore: AssistantStore
    
    @Environment(\.idProviderValue) var idProvider

    var body: some View {
        ChatView(
            store: chatStore,
            assistantStore: assistantStore
        )
    }
}

struct TranscribeView: View {
    var body: some View {
        Text("Transcribe: TBD")
            .font(.largeTitle)
    }
}

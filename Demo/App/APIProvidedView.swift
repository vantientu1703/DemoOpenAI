//
//  APIProvidedView.swift
//  Demo
//
//  Created by Sihao Lu on 4/7/23.
//

import DemoChat
import OpenAI
import SwiftUI

struct APIProvidedView: View {
    @StateObject var chatStore: ChatStore
    @StateObject var assistantStore: AssistantStore
    @Environment(\.idProviderValue) var idProvider

    init(
        idProvider: @escaping () -> String
    ) {
        self._chatStore = StateObject(
            wrappedValue: ChatStore(
                openAIClient: OpenAI(configuration: OpenAI.Configuration(token: "", host: "localhost", port: 1234, scheme: "http")),
                idProvider: idProvider
            )
        )
        self._assistantStore = StateObject(
            wrappedValue: AssistantStore(
                openAIClient: OpenAI(configuration: OpenAI.Configuration(token: "", host: "localhost", port: 1234, scheme: "http")),
                idProvider: idProvider
            )
        )
    }

    var body: some View {
        ContentView(
            chatStore: chatStore,
            assistantStore: assistantStore
        )
    }
}

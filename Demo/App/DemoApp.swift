//
//  DemoApp.swift
//  Demo
//
//  Created by Sihao Lu on 4/6/23.
//

import DemoChat
import OpenAI
import SwiftUI

@main
struct DemoApp: App {

    let idProvider: () -> String

    init() {
        self.idProvider = {
            UUID().uuidString
        }
    }

    var body: some Scene {
        WindowGroup {
            Group {
                APIProvidedView(
                    idProvider: idProvider
                )
            }
        }
    }
}

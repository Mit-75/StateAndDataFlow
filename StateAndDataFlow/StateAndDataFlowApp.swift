//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Dmitry Parhomenko on 09.03.2024.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var contentViewVM = ContentViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(contentViewVM)
    }
}

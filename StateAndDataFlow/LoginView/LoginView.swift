//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Dmitry Parhomenko on 09.03.2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var logynViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            TextField("Enter your name ", text: $logynViewVM.name)
                .multilineTextAlignment(.center)
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
        }
    }
    private func login() {
        if !logynViewVM.name.isEmpty {
            logynViewVM.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}

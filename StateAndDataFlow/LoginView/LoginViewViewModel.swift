//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Dmitry Parhomenko on 09.03.2024.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    var name = ""
    @Published var isLoggedIn = false
}

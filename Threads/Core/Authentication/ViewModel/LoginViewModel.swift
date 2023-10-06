//
//  LoginViewModel.swift
//  Threads
//
//  Created by Md Miraj Ansari on 06/10/23.
//


import Foundation

class LoginViewModel: ObservableObject{
    @Published var email=""
    @Published var password=""
    
    
    @MainActor
    func login() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

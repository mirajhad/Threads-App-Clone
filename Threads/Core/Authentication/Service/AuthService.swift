//
//  AuthService.swift
//  Threads
//
//  Created by Md Miraj Ansari on 06/10/23.
//

import Firebase

class AuthService{
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email:String, password:String) async throws{
        do{
            let result =  try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Create user \(result.user.uid)")
        } catch{
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email:String, password:String, fullname:String, username:String) async throws{
        do{
            let result =  try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Create user \(result.user.uid)")
        } catch{
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func signOut(){
        try? Auth.auth().signOut()   // signs out on backend
        self.userSession = nil //this removes session locally and updates routing
    }
}

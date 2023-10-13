//
//  RegistrationView.swift
//  Threads
//
//  Created by Md Miraj Ansari on 02/10/23.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()

    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240)
                .padding()
            
            VStack{
                TextField("Enter your email",text:$viewModel.email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password",text:$viewModel.password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name",text:$viewModel.fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username",text:$viewModel.username)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button{
                Task {try await viewModel.createUser()}
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical, 16)
            
            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack(spacing:3){
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
            
        }
    }
}

#Preview {
    RegistrationView()
}

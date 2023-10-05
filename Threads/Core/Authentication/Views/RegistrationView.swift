//
//  RegistrationView.swift
//  Threads
//
//  Created by Md Miraj Ansari on 02/10/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email=""
    @State private var password=""
    @State private var fullname=""
    @State private var username=""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240)
                .padding()
            
            VStack{
                TextField("Enter your email",text:$email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password",text:$password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name",text:$fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your username",text:$username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button{
                
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
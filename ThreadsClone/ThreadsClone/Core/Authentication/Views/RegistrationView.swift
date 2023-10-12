//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Tharindu Kavishna on 2023-10-11.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = "";
    @State private var password = "";
    @State private var fullname = "";
    @State private var username = "";
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your full name", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            
            Button{
                
            }label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }.padding(.top)
            
            Spacer()
            
            Divider()
            
            NavigationLink {
                Text("Registration View")
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }.padding(.vertical, 16)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

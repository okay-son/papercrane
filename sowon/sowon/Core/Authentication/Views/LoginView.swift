//
//  LoginView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View{
        VStack {
                
            AuthHeaderView(title1: "Hello.", title2: "Welcome Back")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)

            HStack {
                Spacer()
                
                NavigationLink {
                    Text("Reset password")
                } label: {
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.aquablue)
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            Button {
                viewModel.login(withEmail: email, password: password)
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.aquablue)
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink{
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("don't have an account?")
                        .font(.footnote)
                    Text("sign up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

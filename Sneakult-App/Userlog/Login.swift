//
//  Login.swift
//  Sneakult
//
//  Created by student on 30/04/24.
//

import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Login")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .padding([.top, .leading, .bottom], 100)
                    
                    Image("Image 3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 200)
                        
                        .padding(.top, 60)
                }

                
                TextField(
                    "User name / Email address",
                    text: $email
                )
                .foregroundColor(.black)
                .padding()
                .frame(width: 350, height: 45)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary, lineWidth: 1)
                )
                .padding(.bottom, 8)
                
                SecureField(
                    "Password",
                    text: $password
                )
                .foregroundColor(.black)
                .padding()
                .frame(width: 350, height: 45)
                .cornerRadius(10)
                
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.secondary, lineWidth: 1)
                )
                .padding(.bottom, 8)
                
                Button(action: {
                    // Perform login action here
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 350, height: 45)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.secondary, lineWidth: 1)
                        )
                        .shadow(radius: 2)
                }
                
                Text("or")
                
                Button(action: {
                    // Action when the button is tapped
                    
                }) {
                    HStack {
                        Image(systemName: "applelogo")
                            .foregroundColor(.white)
                        
                        Text("Sign in with Apple")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                    .padding()
                    .frame(maxWidth: 350)
                    .background(Color.black)
                    .cornerRadius(10)
                }
                
                Spacer()
                
                // "Don't have an account? Sign up" link
                NavigationLink(destination: Signup()) {
                    Text("Don't have an account? Sign up")
                        .foregroundColor(.blue)
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    Login()
}

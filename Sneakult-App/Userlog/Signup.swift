
import SwiftUI

struct Signup: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    @FocusState private var passwordFieldFocused: Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("Create\nan Account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(height: 100)

                Image("Image 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180, alignment: .trailing)
            }
            .lineLimit(3)
            
            TextField(
                "Username",
                text: $name
            )
            .focused($emailFieldIsFocused)
            .onSubmit {
                // validate(name: name)
            }
            .foregroundColor(.black)
            .padding()
            .frame(width: 350, height: 45)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.secondary, lineWidth: 1)
            )
            .padding(.bottom, 8)
            
            TextField(
                "Email",
                text: $email
            )
            .focused($emailFieldIsFocused)
            .onSubmit {
                // validate(email: email)
            }
            .foregroundColor(.black)
            .padding()
            .frame(width: 350, height: 45)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.secondary, lineWidth: 1)
            )
            .padding(.bottom, 8)
            
            TextField(
                "Password",
                text: $password
            )
            .focused($passwordFieldFocused)
            .onSubmit {
                // validate(password: password)
            }
            .foregroundColor(.black)
            .padding()
            .frame(width: 350, height: 45)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.secondary, lineWidth: 1)
            )
            
            .padding(.bottom, 8)
            
            TextField(
                "Confirm Password",
                text: $confirmPassword
            )
            .focused($passwordFieldFocused)
            .onSubmit {
                // validate(password: password)
            }
            .foregroundColor(.white)
            .padding()
            .frame(width: 350, height: 45)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.secondary, lineWidth: 1)
            )
            .padding(.bottom, 8)
            
            Button(action: {
                // Perform signup action here
            }) {
                Text("Sign up")
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
            
            // "Already have an account?" link
            NavigationLink(destination: Login()) {
                Text("Already have an account? Log in")
                    .foregroundColor(.blue)
                    .font(.headline)
                    .padding()
            }
        }
        
    }
}

#Preview {
    Signup()
}

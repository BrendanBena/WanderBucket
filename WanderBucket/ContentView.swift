//
//  ContentView.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            AppTitle()
            AppLogo()
            Qoute()
            UsernameField(username: $username)
            PasswordField(password: $password)
            Button(action: {print("Button tapped")}) {
                LoginButton()
            }
            Button(action: {print("Forgot Password Button tapped")}) {
                ForgotPasswordButton()
            }
            Button(action: {print("Sign Up Button tapped")}) {
                SignUpButton()
            }
        }
        .padding()
    }
}

struct AppTitle : View {
    var body : some View {
        Text("WanderBucket")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
    }
}

struct AppLogo : View {
    var body : some View {
        Image("globe")
            .padding(-22.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct Qoute : View {
    var body : some View {
        Text("Not All Those Who Wander Are Lost...")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.vertical, 10.0)
    }
}

struct UsernameField: View {
    
    @Binding var username: String
    var body : some View {
        TextField("Username", text: $username)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(5.0)
            .padding(.horizontal, 35.0)
    }
}

struct PasswordField: View {
    
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(5.0)
            .padding(.horizontal, 35.0)
    }
}

struct LoginButton : View {
    var body : some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 220, height: 45)
            .background(Color.white)
            .cornerRadius(15.0)
    }
}

struct ForgotPasswordButton : View {
    var body : some View {
        Text("Don't Have an Account? Sign Up.")
        .font(.footnote)
        .padding(.top, 10.0)
    }
}

struct SignUpButton : View {
    var body : some View {
        Text("Forgot Password? Click Here.")
            .font(.footnote)
            .padding(.top, 8.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewLayout(.device)
        }
    }
}

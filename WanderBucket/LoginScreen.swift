//
//  ContentView.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/2/21.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var disableLogin: Bool {
        username.isEmpty || password.isEmpty
    }
    
    var body: some View {
        NavigationView {
            VStack {
                AppTitle()
                AppLogo2()
                Qoute()
                UsernameField(username: $username)
                PasswordField(password: $password)
                NavigationLink(destination: GlobeView()) {
                    LoginButton()
                }.disabled(disableLogin)
                NavigationLink(destination: SignUpScreen()) {
                    SignUpButton()
                }
                NavigationLink(destination: ForgotPasswordScreen()) {
                    ForgetPasswordButton()
                }
            }.padding(.bottom, 40.0)
        }
        Spacer()
    }
}

struct AppTitle : View {
    var body : some View {
        Text("WanderBucket")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 25.0)
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

struct AppLogo2 : View {
    var body : some View {
        Image("Globe2")
            .resizable()
            .scaledToFit()
            .frame(width: 300.0,height:300)
            //.padding(-22.0)
            //.clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 10)
    }
}

struct Qoute : View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body : some View {
        Text("Not All Those Who Wander Are Lost...")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            .multilineTextAlignment(.center)
            .padding(.vertical, 20.0)
    }
}

struct UsernameField: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var username: String
    
    var body : some View {
        TextField("Username", text: $username)
            .padding()
            .colorInvert()
            .background(colorScheme == .dark ? Color.white : Color.black)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
    }
}

struct PasswordField: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .colorInvert()
            .background(colorScheme == .dark ? Color.white : Color.black)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
    }
}

struct LoginButton : View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body : some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
            .frame(width: 235, height: 45)
            .background(colorScheme == .dark ? Color.white : Color.black)
            .cornerRadius(15.0)
    }
}

struct SignUpButton : View {
    var body : some View {
        Text("Don't Have an Account? Sign Up.")
        .font(.footnote)
        .padding(.top, 8.0)
    }
}

struct ForgetPasswordButton : View {
    var body : some View {
        Text("Forgot Password? Click Here.")
            .font(.footnote)
            .padding(.top, 5.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginScreen()
                //.preferredColorScheme(.dark)
                .previewLayout(.device)
        }
    }
}

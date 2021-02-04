//
//  ForgotPasswordScreen.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/3/21.
//

import SwiftUI

struct ForgotPasswordScreen: View {
    
    @State var forgottenEmail: String = ""
    
    var body: some View {
        VStack{
            ForgotEmailTitle()
            ForgotEmailField(forgottenEmail: $forgottenEmail)
            Button(action: {print("Forgot Email Button tapped")}) {
                ForgotEmailButton()
            }
        }
    }
}

struct ForgotEmailTitle : View {
    var body : some View {
        Text("Please Enter Email:")
            .font(.title)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 7.5)
    }
}

struct ForgotEmailField: View {

    @Binding var forgottenEmail: String
    var body : some View {
        TextField("Email", text: $forgottenEmail)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}

struct ForgotEmailButton : View {
    var body : some View {
        Text("Send Link")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 235, height: 45)
            .background(Color.white)
            .cornerRadius(15.0)
    }
}

struct ForgotPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreen()
            .preferredColorScheme(.dark)
    }
}

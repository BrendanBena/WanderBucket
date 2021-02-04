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
        ForgotEmailField(forgottenEmail: $forgottenEmail)
    }
}

struct ForgotEmailField: View {

    @Binding var forgettenEmail: String
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

struct ForgotPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreen()
    }
}

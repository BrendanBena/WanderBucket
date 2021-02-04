//
//  SignUpScreen.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/3/21.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var confirmedPassword: String = ""
    @State var dob: String = ""
    @State var nationality: String = ""
    @State var email: String = ""
    @State var gender: String = ""
    
    var body: some View {
        VStack {
            SignUpTitle()
            //AppLogo()
            UsernameField(username: $username)
            EmailField(email: $email)
            PasswordField(password: $password)
            ComfirmPasswordField(confirmedPassword: $confirmedPassword)
            DOBField(dob: $dob)
            NationalityField(nationality: $nationality)
            GenderField(gender: $gender)
            Button(action: {print("Sign Up Button tapped")}) {
                FirstSignUpButton()
            }
        }
        .padding(.bottom,50.0)
    }
}

// Password Validation Function
// Username Validation Function
// Email Validation Function
// DOB Validation Function

struct SignUpTitle : View {
    var body : some View {
        VStack {
            
            Text("WanderBucket")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(/*@START_MENU_TOKEN@*/.horizontal, 15.0/*@END_MENU_TOKEN@*/)
            Text("Create An Account:")
                .font(.title2)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct EmailField: View {

    @Binding var email: String
    var body : some View {
        TextField("Email", text: $email)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}

struct ComfirmPasswordField: View {

    @Binding var confirmedPassword: String
    var body : some View {
        TextField("Comfirm Password", text: $confirmedPassword)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}

// Think about calendar here
struct DOBField: View {

    @Binding var dob: String
    var body : some View {
        TextField("MM/DD/YYYY", text: $dob)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(10.0)
            //.datePickerStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Date Picker Style@*/DefaultDatePickerStyle()/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}

// Think about country selection instead
struct NationalityField: View {

    @Binding var nationality: String
    var body : some View {
        TextField("Nationality (Optional)", text: $nationality)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}

// Maybe take out?
struct GenderField: View {

    @Binding var gender: String
    var body : some View {
        TextField("Gender (Optional)", text: $gender)
            .padding()
            .colorInvert()
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}

struct FirstSignUpButton : View {
    var body : some View {
        Text("Sign Up!")
            .font(.headline)
            .foregroundColor(.black)
            .frame(width: 235, height: 45)
            .background(Color.white)
            .cornerRadius(15.0)
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpScreen()
                .preferredColorScheme(.dark)
                .previewLayout(.device)
        }
    }
}

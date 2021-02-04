//
//  SignUpScreen.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/3/21.
//
//
//  This might be problematic if people enter null emails
//
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
    
    @State private var isEmailValid : Bool = true
    @State private var textEmail : String = ""
    
    var body: some View {
        VStack {
            SignUpTitle()
            UsernameField(username: $username)
            EmailField(textEmail: $textEmail, isEmailValid: $isEmailValid)
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

    @Binding var textEmail: String
    @Binding var isEmailValid: Bool
    var body : some View {
        TextField("Email", text: $textEmail, onEditingChanged: { (isChanged) in
            if !isChanged {
                if self.textFieldValidatorEmail(self.textEmail) {
                    self.isEmailValid = true
                } else {
                    self.isEmailValid = false
                    self.textEmail = ""
                }
            }
        })
        //.modifier(ClearButton(text: $email))
        .padding()
        .colorInvert()
        .background(Color.white)
        .cornerRadius(10.0)
        .padding(.horizontal, 40.0)
        .padding(.vertical, 5.0)
        if !self.isEmailValid {
            Text("Email is Not Valid")
                .font(.callout)
                .foregroundColor(Color.red)
        }
    }
    
    func textFieldValidatorEmail(_ string: String) -> Bool {
        if string.count > 100 {
            return false
        }
        let emailFormat = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        //let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: string)
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

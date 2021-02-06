//
//  SignUpScreen.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/3/21.
//
//
//  This might be problematic if people enter null emails
//  Add Password Validation function
//
//

import SwiftUI

struct SignUpScreen: View {
    
    @State var password: String = ""
    @State var confirmedPassword: String = ""
    @State var nationality: String = ""
    @State var gender: String = ""

    @State private var isUsernameValid : Bool = true
    @State private var username : String = ""
    
    @State private var isEmailValid : Bool = true
    @State private var email : String = ""

    @State private var isDOBValid : Bool = true
    @State private var dob : String = ""

    var body: some View {
        VStack {
            SignUpTitle()
            UserNameField(username: $username, isUsernameValid: $isUsernameValid)
            EmailField(email: $email, isEmailValid: $isEmailValid)
            PasswordField(password: $password)
            ComfirmPasswordField(confirmedPassword: $confirmedPassword)
            DOBField(dob: $dob, isDOBValid: $isDOBValid)
            NationalityField(nationality: $nationality)
            GenderField(gender: $gender)
            Button(action: {print("Sign Up Button tapped")}) {
                FirstSignUpButton()
            }
        }
        .padding(.bottom,50.0)
    }
}

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

struct UserNameField: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var username: String
    @Binding var isUsernameValid: Bool
    var body : some View {
        TextField("Username", text: $username, onEditingChanged: { (isChanged) in
            if !isChanged {
                if self.usernameValidator(self.username) {
                    self.isUsernameValid = true
                } else {
                    self.isUsernameValid = false
                }
            }
        })
        .padding()
        .colorInvert()
        .background(colorScheme == .dark ? Color.white : Color.black)
        .cornerRadius(10.0)
        .padding(.horizontal, 40.0)
        if !self.isUsernameValid {
            Text("Username is must be 4-16 characters")
                .font(.callout)
                .foregroundColor(Color.red)
        }
    }
    
    func usernameValidator (_ string: String) -> Bool {
        if string == "" {
            return false
        }
        if string.count < 4 || string.count  > 16 {
            return false
        }
        else {
            return true
        }
    }
}


struct EmailField: View {

    @Environment(\.colorScheme) var colorScheme
    @Binding var email: String
    @Binding var isEmailValid: Bool
    var body : some View {
        TextField("Email", text: $email, onEditingChanged: { (isChanged) in
            if !isChanged {
                if self.emailValidator(self.email) {
                    self.isEmailValid = true
                } else {
                    self.isEmailValid = false
                }
            }
        })
        .padding()
        .colorInvert()
        .background(colorScheme == .dark ? Color.white : Color.black)
        .cornerRadius(10.0)
        .padding(.horizontal, 40.0)
        .padding(.vertical, 5.0)
        if !self.isEmailValid {
            Text("Email is Not Valid")
                .font(.callout)
                .foregroundColor(Color.red)
        }
    }
    
    func emailValidator(_ string: String) -> Bool {
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

    @Environment(\.colorScheme) var colorScheme
    @Binding var confirmedPassword: String
    //@Binding var isPasswordValid: Bool
    var body : some View {
        SecureField("Comfirm Password", text: $confirmedPassword)
                    
//                    , onEditingChanged: { (isChanged) in
//            if !isChanged {
//                if self.PasswordValidator(self.dob) {
//                    self.isPasswordValid = true
//                } else {
//                    self.isPasswordValid = false
//                    self.confirmedPassword = ""
//                }
//            }
//        })
        .padding()
        .colorInvert()
        .background(colorScheme == .dark ? Color.white : Color.black)
        .cornerRadius(10.0)
        .padding(.horizontal, 40.0)
        .padding(.vertical, 5.0)
//        if !self.isPasswordValid {
//            Text("Password do not match")
//                .font(.callout)
//                .foregroundColor(Color.red)
//        }
        
    }
    func passwordValidator (_ password1: String, _ password2: String) -> Bool {
        if password1 == password2 {
            return true
        } else {
            return false
        }
    }
}

// Think about calendar here
struct DOBField: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var dob: String
    @Binding var isDOBValid: Bool
    var body : some View {
        TextField("MM/DD/YYYY", text: $dob, onEditingChanged: { (isChanged) in
            if !isChanged {
                if self.dobValidator(self.dob) {
                    self.isDOBValid = true
                } else {
                    self.isDOBValid = false
                }
            }
        })
        .padding()
        .colorInvert()
        .background(colorScheme == .dark ? Color.white : Color.black)
        .cornerRadius(10.0)
        .datePickerStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Date Picker Style@*/DefaultDatePickerStyle()/*@END_MENU_TOKEN@*/)
        .padding(.horizontal, 40.0)
        .padding(.vertical, 5.0)
        if !self.isDOBValid {
            Text("Date Format is Not Valid")
                .font(.callout)
                .foregroundColor(Color.red)
        }
    }
    
    func dobValidator (_ string: String) -> Bool {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/DD/YYYY"
        if dateFormatter.date(from: dob) != nil {
            return true
        } else {
            return false
        }
    }
}


// Think about country selection instead
struct NationalityField: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var nationality: String
    var countries = ["(Nationality)", "United States", "Canada", "Mexico", "Germany", "Great Britain", "France"]
    @State private var countryIndex = 0
    
    var body : some View {
        Section {
            Picker(selection: $countryIndex, label: Text("Nationality")) {
                ForEach(0 ..< countries.count) {
                    Text(self.countries[$0])
                }
            }
        }
        .colorInvert()
        .background(colorScheme == .dark ? Color.white : Color.black)
        .frame(width: 350.0, height: 45.0)
        .cornerRadius(10.0)
        .padding(.horizontal, 40.0)

    }
}

// Maybe take out?
struct GenderField: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var gender: String
    var body : some View {
        TextField("Gender (Optional)", text: $gender)
            .padding()
            .colorInvert()
            //.foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            .background(colorScheme == .dark ? Color.white : Color.black)
            .cornerRadius(10.0)
            .padding(.horizontal, 40.0)
            .padding(.vertical, 5.0)
    }
}


struct FirstSignUpButton : View {
    
    @Environment(\.colorScheme) var colorScheme
    var body : some View {
        Text("Sign Up!")
            .font(.headline)
            .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
            .frame(width: 235, height: 45)
            //.background(Color.white)
            .background(colorScheme == .dark ? Color.white : Color.black)
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

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
            Image("globe")
                .padding(-22.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            Text("WanderBucket")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                

            Text("Not All Those Who Wander Are Lost...")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.vertical, 5.0)
            
            TextField("Username", text: $username)
                .padding()
                .colorInvert()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.horizontal, 35.0)
            
            SecureField("Password", text: $password)
                .padding()
                .colorInvert()
                .background(Color.white)
                .cornerRadius(5.0)
                .padding(.horizontal, 35.0)
            
            Text("LOGIN")
                .font(.headline)
                .foregroundColor(.black)
                .frame(width: 150, height: 50)
                .background(Color.white)
                .cornerRadius(15.0)
            
            Text("Forgot Password? Click Here.")
                .font(.footnote)
                .padding(.top, 10.0)
            
            Text("Don't Have an Account? Sign Up.")
                .font(.footnote)
                .padding(.top, 5.0)
                
            
        }
        .padding()
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

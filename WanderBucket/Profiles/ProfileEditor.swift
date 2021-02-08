//
//  ProfileEditor.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/5/21.
//
import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile

    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            HStack {
                Text("Name").bold()
                Divider()
                TextField("Name", text: $profile.name)
            }
            HStack {
                Text("From").bold()
                Divider()
                TextField("From", text: $profile.nationality)
            }
            HStack {
                Text("Age").bold()
                Divider()
                TextField("Age", value: $profile.age, formatter: NumberFormatter())
            }
            HStack {
                Text("Email").bold()
                Divider()
                TextField("Email", text: $profile.email)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}

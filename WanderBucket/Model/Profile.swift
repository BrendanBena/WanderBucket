//
//  Profile.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/5/21.
//

import SwiftUI
import Foundation

struct Profile {

    static let `default` = Profile(id: 1,
                                   username : "BrendanBena",
                                   name: "Brendan Bena",
                                   email: "bbena004@drury.edu",
                                   age: 22,
                                   nationality: "United States",
                                   gender: "male",
                                   prefersNotifications: true,
                                   profilePicture: "brendanBena")
    var id: Int
    var username: String
    var name: String
    var email: String
    var age: Int
    var nationality: String
    var gender: String
    var prefersNotifications: Bool
    
    private var profilePicture: String
    var picture : Image {
        Image(profilePicture)
    }
}
    
    

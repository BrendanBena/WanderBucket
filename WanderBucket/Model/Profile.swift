/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of user profile data.
*/

import Foundation

struct Profile {
    
    static let `default` = Profile(id: 1,
                                   username : "BrendanBena",
                                   name: "Brendan Bena",
                                   email: "bbena004@drury.edu",
                                   age: 22,
                                   nationality: "United States",
                                   gender: "male",
                                   profilePicture: "brendanBena")
    var id: Int
    var username: String
    var name: String
    var email: String
    var age: Int
    var nationality: String
    var gender: String
    var profilePicture: String
}
    
    

//
//  ProfilePicture.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/6/21.
//

import SwiftUI

struct ProfilePicture: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .frame(width: 90.0, height: 90.0)
            .shadow(radius: 7)
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture(image: Image("brendanBena"))
    }
}

//
//  FinishedButton.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/8/21.
//

import SwiftUI



struct FinishedButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isSet ? Color.green : Color.gray)
        }
    }
}

struct FinishedButton_Previews: PreviewProvider {
    static var previews: some View {
        FinishedButton(isSet: .constant(true)) 
    }
    
}

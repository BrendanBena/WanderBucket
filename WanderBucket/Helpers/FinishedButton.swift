//
//  FinishedButton.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/8/21.
//

import SwiftUI



struct FinishedButton: View {
    @Binding var isFinished: Bool

    var body: some View {
        Button(action: {
            isFinished.toggle()
        }) {
            Image(systemName: isFinished ? "task" : "taskCompleted")
                .foregroundColor(isFinished ? Color.black : Color.gray)
        }
    }
}

struct FinishedButton_Previews: PreviewProvider {
    static var previews: some View {
        FinishedButton(isFinished: .constant(true))
    }
    
}

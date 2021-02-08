//
//  ToDoList.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/8/21.
//

import SwiftUI

struct ToDoListCheck: View {
    
    @State var isChecked: Bool
    
    var title: String
    
    func toggle(){
        isChecked = !isChecked
    }
    
    var body: some View {
        HStack{
            Button(action: toggle) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
            }
            Text(title)
        }
    }
}

struct ToDoListCheck_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListCheck(isChecked: false, title: "Title") 
    }
}

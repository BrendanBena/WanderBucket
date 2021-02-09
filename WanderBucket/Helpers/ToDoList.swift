//
//  ToDoList.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/8/21.
//

import SwiftUI

struct ToDoList: View {
    
    @EnvironmentObject var modelData: ModelData
    //var toDo: ToDo
    
    var body: some View {
        List(toDoList){ item in
            ToDoListCheck(isChecked: item.isChecked, title: item.title)
        }
    }
}

struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}



let toDoList = [
    ToDo(id: 0, title: "Swim", isChecked: false),
    ToDo(id: 1, title: "Bike", isChecked: false),
    ToDo(id: 2, title:"Run", isChecked: false),
    ToDo(id: 3, title:"Eat", isChecked: false),
    ToDo(id: 4, title:"Party", isChecked: false),
    ToDo(id: 5, title:"Sleep", isChecked: false)
]


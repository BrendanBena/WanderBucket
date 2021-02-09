//
//  ToDo.swift
//  WanderBucket
//
//  Created by Brendan Bena on 2/8/21.
//

import SwiftUI

struct ToDo: Hashable, Codable, Identifiable{
    var id:Int
    var title: String
    var isChecked: Bool
}

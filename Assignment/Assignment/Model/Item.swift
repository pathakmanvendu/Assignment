//
//  Item.swift
//  Assignment
//
//  Created by Manvendu Pathak on 29/02/24.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    var id = UUID()
    var image:String
    var title: String
    var weight: String
    var coin: Int
    
}

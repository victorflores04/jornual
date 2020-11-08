//
//  Item.swift
//  jornual
//
//  Created by Victor Flores on 11/4/20.
//

import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var price: String
    var discount: String
    // both image and color name are same...
    var image: String
}


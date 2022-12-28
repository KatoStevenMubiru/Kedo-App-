//
//  RecipeModel.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 25/12/2022.
//

import SwiftUI



struct Recipe: Identifiable{
    
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var rating : Int
    var serves : Int
    var preparation : Int
    var cooking : Int
    var instructions : [String]
    var ingredients : [String]
    
}

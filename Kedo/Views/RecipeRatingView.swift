//
//  RecipeRatingView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 25/12/2022.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe : Recipe
    
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 5) {
            
            ForEach(1...(recipe.rating), id: \.self) { item in
                
                Image(systemName: "star.fill")                    .font(.body)
                    .foregroundColor(Color.yellow)
            }// loop
        }// hstack
        
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        
        RecipeRatingView(recipe: recipesData[0])
    }
}

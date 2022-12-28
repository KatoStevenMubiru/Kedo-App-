//
//  RecipeDetailView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 26/12/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe : Recipe
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenMedium"))
                        .padding(.top, 10)
                        .multilineTextAlignment(.center)
                    
                    RecipeRatingView(recipe: recipe)
                    
                    RecipeCookingView(recipe: recipe)
                    
                    Text("Ingredients")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenMedium"))
                        .lineLimit(1)
                    
                    VStack(alignment: .leading, spacing: 5){
                        ForEach(recipe.ingredients, id: \.self){ item in
                            VStack(alignment: .leading, spacing : 6){
                                
                             Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                                
                            }//vstack
                            
                        }//for each
                        
                    }// vstack
                    
                    Text("Instructions")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenMedium"))
                    
                    ForEach(recipe.instructions, id : \.self){ item in
                        VStack(alignment: .center, spacing : 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height : 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenMedium"))
                            
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                        }
                        
                        
                        
                    }// loop
                    
                }// group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }// vstack
        }// scroll view
        .edgesIgnoringSafeArea(.top)
        
       
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}

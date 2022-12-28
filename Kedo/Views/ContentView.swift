//
//  ContentView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 29/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    var headers : [HeaderModel]
    
    var facts : [FactsModel] = factsData
    
    var recipes : [Recipe] = recipesData



    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true){
            
           
            VStack(alignment: .center, spacing: 20){
                
                
                ScrollView(.horizontal, showsIndicators: true) {
                    
                    HStack(alignment :.center, spacing: 0) {
                        
                        ForEach(headers) { item in
                            
                            Header(header: item )
                        }
                        
                        
                    }
                }
                
                // dishes
                
                Text("Dishes(Avocado)")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("GreenAdaptive"))
                .padding(8)
                
                DishView()
                    .frame(maxWidth: 640)
                
                
                Text("Avocado Facts")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("GreenAdaptive"))
                .padding(8)
                
                ScrollView(.horizontal, showsIndicators: true){
                    HStack(alignment: .top,spacing: 60) {
                        
                        
                        
                        
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }// end of loop
                    }// end of hstack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                    
                }// end of scroll view
                
                
                Text("Avocado Recipes")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("GreenAdaptive"))
                .padding(8)
                
                VStack(alignment: .center, spacing: 20){
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                    
                    
                    
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                
                
                // footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All about avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("GreenAdaptive"))
                    .padding(8)
                    Text("Everything you always wanted to know  about Avocados, but you were to afraid to ask.        We got you covered ")
                        .fontDesign(.serif)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                    
                    
                }// end of inner vstack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            } // end of vstack
            
        }// end of scroll view
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData , facts: factsData, recipes: recipesData)
    }
}

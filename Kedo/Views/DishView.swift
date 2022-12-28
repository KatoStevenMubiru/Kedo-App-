//
//  DishView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 09/12/2022.
//

import SwiftUI

struct DishView: View {
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 4) {
            
            VStack(alignment: .leading, spacing: 4) {
                
                HStack() {
                    
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    
                Spacer()
                    Text("Toasts")
                    
                }// end of Hstack
                Divider()
                HStack() {
                    
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    
                Spacer()
                    Text("Tacos ")
                    
                }// end of Hstack
                Divider()
                HStack() {
                    
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    
                Spacer()
                    Text("Salads")
                    
                }// end of Hstack
                Divider()
                HStack() {
                    
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                Spacer()
                    Text("Spreads")
                    
                }// end of Hstack
            }// end of the Vstack
            
            
            // 2nd
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                        
                }// hstack
            }//vstack
            
            Image(systemName: "heart.circle")
                .font(Font.title.weight(.ultraLight))
                .imageScale(.large)
            
            // guacomole column
            VStack(alignment: .trailing, spacing: 4) {
                HStack(){
                   Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }// end of htack
                Divider()
                HStack(){
                   Text("SandWich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }// end of htack
                Divider()
                HStack(){
                   Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }// end of htack
                Divider()
                HStack(){
                   Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }// end of htack
            }// end of vstack
            
        }// end of HStack
        .fontDesign(.serif)
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier : ViewModifier{
    
    func body(content: Content) -> some View{
        
        content
            .frame(width: 50, height: 50, alignment: .center)
        
        
    }
    
    
    
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        DishView()
    }
}

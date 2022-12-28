//
//  RipeningView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 27/12/2022.
//

import SwiftUI

struct RipeningView: View {
    
    
    var ripening : Ripening
    
    @State private var slideIn: Bool = false
    
    var body: some View {
        
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
            .zIndex(1)
            .animation(Animation.easeInOut(duration: 1))
            .offset(y: slideIn ? 60 : -60)
            
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center, spacing: 0){
                    
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                    
                }// vstack
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 60)
                .frame(width: 180)
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                     RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y : 6)
                    
                    )
                Spacer()
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                Text(ripening.ripeness)
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width : 185)
                    .background(
                      RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y : 6)
                    
                    )
                
                
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                
            }// vstack
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 480, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            
        }// end of vstack
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            
            self.slideIn.toggle()
            
        })
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[1])
    }
}

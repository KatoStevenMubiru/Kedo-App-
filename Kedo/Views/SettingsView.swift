//
//  SettingsView.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 30/11/2022.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment : .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorGreenLight"), radius: 8, x: 0, y : 4)
                    
                
                
                Text("AVOCADOS")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenMedium"))
            }// vstack
            .padding()
            Form{
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification){
                        Text("Enable notification")
                    }// toggle
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background refresh")
                    }// toggle
                    
                    
                    
                }// section
                Section(header: Text("Application")){
                    if enableNotification {
                        HStack{
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                            
                        }
                        HStack{
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                            
                        }// hstack
                        HStack{
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Kato Steven Mubiru(KSM)")
                            
                        }// hstack
                        HStack{
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Kato Steven Mubiru(KSM)")
                            
                        }// hstack
                        HStack{
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("www.linkedin.com/in/kato-steven-907b49109")
                        }// hstack
                        HStack{
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                            
                        }// hstack
                    } else {
                        HStack{
                            Text("HappyCoding").foregroundColor(Color.gray)
                            Spacer()
                            Text(" I love Kedo ❤️")
                            
                        }
                    }// hstack
                  
                    
                    
                }// section
                
            }// form
        }// vstack
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

//
//  RipeningStages.swift
//  Kedo
//
//  Created by Kato Steven Mubiru on 30/11/2022.
//

import SwiftUI

struct RipeningStages: View {
    
    var ripeningStages :[Ripening] = ripeningData
    
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: true){
            VStack{
                
                HStack(alignment: .center, spacing: 25){
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                        
                        
                        
                        
                    }
                    
                    
                }// hstack
                .padding(.vertical)
                .padding(.horizontal, 25)
            }// vstack
            
        }// end of scroll view
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStages_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStages(ripeningStages: ripeningData)
    }
}

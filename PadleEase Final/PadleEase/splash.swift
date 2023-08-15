//
//  splash.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 27/01/1445 AH.
//

import SwiftUI

struct splash: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive{
                tapBar()
            }else{
                Image("LOgo").resizable().scaledToFit().frame(width: 350, height: 120)
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline:.now()+1.6){
            withAnimation{
                self.isActive = true
            }
                
            }
        }
    }
}

struct splash_Previews: PreviewProvider {
    static var previews: some View {
        splash()
    }
}
//
//
//struct splash_Previews: PreviewProvider {
//    static var previews: some View {
//        splash()
//    }
//}

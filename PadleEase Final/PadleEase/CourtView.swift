//
//  CourtView.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//

import SwiftUI

struct CourtView: View {
    let courtm : Court
    @State var isLiked = false
    @ObservedObject var viewModel : UserViewModel
    
    var body: some View {
        VStack{
           
            ZStack{
                VStack{
              
                    
                    Image(courtm.img)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 360 , height: 140);
                    
                    HStack{
                        Text("\(courtm.courtName)")
                            .multilineTextAlignment(.leading).cornerRadius(10).foregroundColor(Color(hue: 0.6, saturation: 1.0, brightness: 0.568))
                            .fontWeight(.bold)
                            .font(.headline)
                        
                        Spacer()
                    Button{
                            isLiked.toggle()
                        viewModel.toggleLike(x: courtm)
                        }
                    label:
                        {
                        Image(systemName: isLiked ? "heart.circle.fill" : "heart.circle").tint(isLiked ? .red : .black).font(.system(size: 25))
                            
                        }
                 
                    }/// H stack
                 
                }.padding()
                    .background(.gray.opacity(0.3))
                    .cornerRadius(20) /// make the background rounded
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 6)
                    )//end of v stack
            }.frame(width: 360, height: 177).padding(3)
                .cornerRadius(10)
                //z stack
            
        
        }.padding()//end of v stack
      
                       
    }
}


//struct CourtView_Previews: PreviewProvider {
//    static var previews: some View {
//        CourtView()
//    }
//}

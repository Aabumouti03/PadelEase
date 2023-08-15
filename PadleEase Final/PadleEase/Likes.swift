//
//  Likes.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//

import SwiftUI

struct Likes: View {
    
    
    @ObservedObject var viewModel: UserViewModel
    
    
    var body: some View {
        
        ScrollView{
            
            Text("Liked Courts")
                .font(.title2)
                .fontWeight(.black)
                .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                .multilineTextAlignment(.leading)
                .padding(.trailing, 180)
                .frame(alignment: .leading)
            
            Rectangle().foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459)).frame(width: 350,height:2,alignment:.topLeading)
                .padding(.top, -10)
            ForEach(viewModel.Arraycourts.filter({ $0.like })){   Court in
                
                    ZStack{
                        VStack{
                        
                            
                            
                            Image(Court.img)
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 360 , height: 140);
                            
                            HStack{
                                Text("\(Court.courtName)")
                                    .multilineTextAlignment(.leading).cornerRadius(10).foregroundColor(Color(hue: 0.6, saturation: 1.0, brightness: 0.568))
                                    .fontWeight(.bold)
                                    .font(.headline)
                                
                                Spacer()
                                
                                
                                Image(systemName: "heart.circle.fill").foregroundColor(Color.red).font(.system(size: 25))
                                //    .position(x:370 , y: 150)
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
                }
            }
        }
    }


//
//
//var body: some View {
//
//    ScrollView{
//
//        ForEach(viewModel.Arraycourts.filter({ $0.like })){   Court in
//
//            ZStack{
//                NavigationLink(destination: {
//
//                    ReservationDetails(courtDeet: Court, viewModel: viewModel)
//
//
//                }, label: {
//
//                    CourtView(courtm: Court, viewModel: viewModel)
//                })
//
//            }
//        }
//    }
//}
//Image(systemName: "heart.circle.fill").foregroundColor(Color.red).font(.system(size: 25))
//    .position(x:370 , y: 150)
//
//struct Likes_Previews: PreviewProvider {
//    static var previews: some View {
//        Likes()
//    }
//}

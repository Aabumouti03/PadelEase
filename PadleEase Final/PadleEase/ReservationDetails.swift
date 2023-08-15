//
//  ReservationDetails.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 20/01/1445 AH.
//

import SwiftUI

struct ReservationDetails: View {
    let courtDeet : Court
    @ObservedObject var viewModel : UserViewModel
    
    var body: some View {
        
        ScrollView{
        ZStack{
            
            
            
            Image(courtDeet.img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 300)
                .clipped()
                .padding(.top, -460)
            
            Spacer()
                .edgesIgnoringSafeArea(.top)
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .padding(.top,150)
                    .foregroundColor(Color(red: 0.933, green: 0.962, blue: 0.983))
                    .frame(width: 393, height: 680)
                
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color(red: 0.032, green: 0.239, blue: 0.458), lineWidth: 2)
                    .frame(width: 393, height: 530)
                    .padding(.top,150)
                
                Text(courtDeet.courtName)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .padding(.top, -150)
                
                Text(courtDeet.owner)
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .font(.title2.bold())
                    .padding(.leading, -170)
                    .padding(.top, -40)
                
                Text("Owner")
                    .foregroundColor(Color(red: 0.532, green: 0.639, blue: 0.758))
                    .font(.body.bold())
                    .padding(.leading, -170)
                    .padding(.top, -10)
                
                Image(systemName: "location")
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .bold()
                    .padding(.top, -165)
                    .padding(.leading, 330)
                    .font(.system(size: 25))
                
                Image(systemName: "phone")
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .bold()
                    .font(.system(size: 28))
                    .padding(.leading, 240)
                    .padding(.top, -40)
                
                Image(systemName: "message")
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .bold()
                    .font(.system(size: 25))
                    .padding(.leading, 330)
                    .padding(.top, -40)
                
                Text("Price/Hour: \(courtDeet.price)")
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .font(.title2).bold()
                    .padding(.leading, -170)
                    .padding(.top, 230)
                
                Text("Including VAT")
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .font(.body).underline()
                    .padding(.leading, -170)
                    .padding(.top, 280)
                
            }//zstack
            
            stars(rating: courtDeet.rating, maxRating: 5)
                .padding(.bottom,200)
                .padding(.leading, -170)
            
            NavigationLink(destination: booking(x : courtDeet, viewModel: viewModel)) {
                HStack {
                    Text("Reserve")
                        .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                        .font(.title3)
                        .frame(width: 200, height: 60, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color(red: 0.032, green: 0.239, blue: 0.458), lineWidth: 2)
                                .frame(width: 200, height: 60)
                        )
                        .background(.clear)
                        .cornerRadius(15)
                        .padding(.top, 450)
                    
                }//body
                
            }//struct
            
        }
    }
        
    }
}
    


//struct ReservationDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        ReservationDetails()
//    }
//}

//


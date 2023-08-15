//
//  Payment.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 19/01/1445 AH.
//

import SwiftUI

struct Payment: View {
    @ObservedObject var viewModel : UserViewModel
    
    var body: some View {
        
        ScrollView(.vertical){
            
            Text("Payment                  ")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                .multilineTextAlignment(.leading)
                .padding(.trailing,100)
            
            Rectangle().foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459)).frame(width: 350,height:2,alignment:.topLeading).padding(0)
            
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).padding(.trailing,100)
            
            
            
            
            
            VStack(spacing: 8) {
                
                
                
                
                
                //.background(Color(red: 0.937, green: 0.962, blue: 0.983))
                
                
                NavigationLink(destination: PaymentMethod()) {
                    HStack{
                        
                        Text("Payment Methods")
                            .foregroundColor(Color(red: 0.035, green: 0.235, blue:0.459))
                            .font(.title3)
                            .padding()
                            .frame(width: 360, height: 60,alignment: .leading)
                            .background(Color(red: 0.937, green: 0.962, blue: 0.983))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(red: 0.035, green: 0.235, blue:0.459), lineWidth: 2)
                                
                                
                            )
                        
                    }
                    
                }
                
                
                NavigationLink(destination: yourPayment(viewModel: viewModel)) {
                    HStack{
                        
                        Text("your payment")
                            .foregroundColor(Color(red: 0.035, green: 0.235, blue:0.459))
                            .font(.title3)
                            .padding()
                            .frame(width: 360, height: 60,alignment: .leading)
                            .background(Color(red: 0.937, green: 0.962, blue: 0.983))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(red: 0.035, green: 0.235, blue:0.459), lineWidth: 2)
                                
                                
                            )
                        
                    }
                    
                }
                
                
                
                
                
                
            }//end of V satack
//            .padding()  .navigationBarItems(leading: Image("LOgo")
//                .resizable()
//                .frame(width: 150,height: 50),
//                                            //Image(systemName: "magnifyingglass")
//                                            trailing:
//                                                NavigationLink(
//                                                    destination: search(), label:{ Image(systemName: "magnifyingglass")
//                                                            .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
//                                                    })
//            )
            
        }//scroll
        //navi
    }//body
}

//struct Payment_Previews: PreviewProvider {
//    static var previews: some View {
//        Payment()
//    }
//}

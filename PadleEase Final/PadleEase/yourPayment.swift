//
//  yourPayment.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 19/01/1445 AH.
//

import SwiftUI

struct yourPayment: View {
    @ObservedObject var viewModel : UserViewModel

    var body: some View {
        
        
            ScrollView(.vertical){
                
                VStack(alignment: .leading , spacing: 23.0){
                    Text("Your Payments  ")
                    
                        .font(.title)
                    
                        .foregroundColor(Color(red:0.032,green:0.239,blue:0.458))
                        .fontWeight(Font.Weight.black)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                    Divider()
                        .frame(minHeight:4)
                        .overlay(Color(red: 0.032, green: 0.239, blue: 0.458))
                    
                    
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
                        RoundedRectangle(cornerRadius: 10.0)
                            .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2)
                            .frame(width:360,height:140)
                        
                        ZStack{
                            
                            Image("Image2")
                                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                                .frame(width: 100, height: 100)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.all)
                                
                            
                            
                            Text("            Najd Padel Courts")
                                .multilineTextAlignment(.trailing)
                            
                                .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                                .fontWeight(.black)
                            
                            
                            Text("           Paid - Oct 30,2022")
                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                            
                                .multilineTextAlignment(.trailing)
                                .lineLimit(nil)
                                .padding(.bottom, 30)
                                .fontWeight(.semibold)
                            Text("                          MASTERCARD*****6758")
                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                .padding(.bottom, -30)
                                .fontWeight(.semibold)
                            
                        }
                        
                        
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
                        
                        RoundedRectangle(cornerRadius: 10.0)
                            .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2).frame(width:360,height:140)
                      
                        
                        
                        
                        Image("Image3")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 100, height: 100)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.all)
                           
                        
                        
                        Text("Padel 101 ")
                            .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                            .fontWeight(.black)
                        
                        
                        Text("            Paid - June 19,2022")
                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                            .padding(.bottom, 30)
                            .fontWeight(.semibold)
                        Text("        VISA****6318")
                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                            .padding(.bottom, -30)
                            .fontWeight(.semibold)
                        
                    }
                    
                    
                    Spacer()
                    
                    
                }
                
                
                .padding()
            }.navigationBarItems(leading: Image("LOgo")
                .resizable()
                .frame(width: 150,height: 50),
                                //Image(systemName: "magnifyingglass")
                                trailing:
                                    NavigationLink(
                                        destination: search(viewModel: viewModel), label:{ Image(systemName: "magnifyingglass")
                                                .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                                        })
            )
        }
    

}

//struct yourPayment_Previews: PreviewProvider {
//    static var previews: some View {
//        yourPayment()
//    }
//}

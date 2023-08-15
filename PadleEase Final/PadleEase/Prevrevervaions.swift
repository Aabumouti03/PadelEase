//
//  Prevrevervaions.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 16/01/1445 AH.
//

import SwiftUI

struct Prevrevervaions: View {
    
    @ObservedObject var viewModel : UserViewModel
    var body: some View {
        
        
        
        NavigationView{
            ScrollView{
                
                
                VStack{
                    
                    Text("Upcoming Reservations")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 80.0)
                    
                    Rectangle().foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459)).frame(width: 350,height:2,alignment:.topLeading)
                        .padding(.top, -10)
                        
                    
                    ForEach(viewModel.Prev){ x in
                        
                        if(x.past == false)
                        {
                            ZStack{
                                
                                
                                RoundedRectangle(cornerRadius: 10.0).fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
                                //
                                RoundedRectangle(cornerRadius: 10.0)
                                    .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2)
                                
                                ZStack{
                                    
                                    Text("\(x.court.courtName)")
                                        .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                                        .fontWeight(.bold)
                                    Text("Reserved on \(x.date.formatted(date: .long, time: .omitted))")
                                        .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                        .padding(.bottom, 30)
                                        .fontWeight(.semibold)
                                    Text("\(x.time)")
                                        .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                        .padding(.bottom, -30)
                                        .fontWeight(.semibold)
                                    
                                    Image(systemName: "checkmark.circle.fill")
                                        .padding(.trailing,80)
                                        .padding(.top,80).frame(width: 100, height: 100)
                                        .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                    Text("Approved")
                                        .padding(.trailing,-20)
                                        .padding(.top,80)
                                    
                                }
                                
                                //                                Image(systemName: "checkmark.circle.fill")
                                //                                    .padding(.trailing,80)
                                //                                    .padding(.top,80).frame(width: 100, height: 100)
                                //                                Text(" Approved")
                                //                                    .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                //                                    .padding(.top, 77)
                                //                                    .fontWeight(.semibold)
                                //                                    .padding(.leading,20)
                            }
                            Rectangle()
                                .frame(width: 360,height:2,alignment:.topLeading).padding(-120).foregroundColor(Color(red: 0.655, green: 0.716, blue: 0.783).opacity(20))
                            
                        }
                        
                        
                    }
                    Text("Previous Reservations")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 90.0)
                    //.position(.init(x: 120, y: 10))
                    
                    Rectangle().foregroundColor(Color(red: 0.036, green: 0.235, blue: 0.459)).frame(width: 350,height:2,alignment:.top)
                        .padding(.top, -10)
                    
                    ForEach(viewModel.Prev){ x in
                        
                        ZStack{
                            
                            
                            
                            ZStack{
                                if(x.past == true)
                                {
                                    
                                    RoundedRectangle(cornerRadius: 10.0).fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
                                    //
                                    RoundedRectangle(cornerRadius: 10.0)
                                        .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2)
                                    
                                    Text("\(x.court.courtName)")
                                        .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                                        .fontWeight(.bold)
                                    Text("Reserved on \(x.date.formatted(date: .long, time: .omitted))")
                                        .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                        .padding(.bottom, 30)
                                        .fontWeight(.semibold)
                                    Text("\(x.time)")
                                        .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                        .padding(.bottom, -30)
                                        .fontWeight(.semibold)
                                    
                                    if(x.att == 3){
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(Color.green)
                                            .padding(.trailing,80)
                                            .padding(.top,80).frame(width: 100, height: 100)
                                        Text("Attended")
                                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                            .padding(.top, 77)
                                            .fontWeight(.semibold)
                                            .padding(.leading,20)
                                    }
                                    if(x.att == 2){
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(Color.red)
                                            .padding(.trailing,80)
                                            .padding(.top,80).frame(width: 100, height: 100)
                                        Text(" Missed")
                                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                                            .padding(.top, 77)
                                            .fontWeight(.semibold)
                                            .padding(.leading,20)
                                    }
                                    
                                    Rectangle()
                                        .frame(width: 360,height:2,alignment:.topLeading).padding(-40).foregroundColor(Color(red: 0.655, green: 0.716, blue: 0.783).opacity(20))
                                    
                                }
                                
                            }
                          
                        }
                        
                        
                    }
                    
                    
                }
                
                //Upcoming Reservations
                
                
                
                
                //                    ZStack{
                //                                                Text("")
                //                                                    .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                //                                                    .fontWeight(.bold)
                //                            Text("Reserved on 31/07/2023")
                //                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                //                                .padding(.bottom, 30)
                //                                .fontWeight(.semibold)
                //                            Text(" from 18:00 to 20:00")
                //                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                //                                .padding(.bottom, -30)
                //                                .fontWeight(.semibold)
                //                            Image(systemName: "checkmark.circle.fill")
                //                                .padding(.trailing,80)
                //                                .padding(.top,80).frame(width: 100, height: 100)
                //                            Text(" Approved")
                //                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
                //                                .padding(.top, 77)
                //                                .fontWeight(.semibold)
                //                                .padding(.leading,20)
                //                                            }
                //                                            Rectangle()
                //                                                .frame(width: 360,height:2,alignment:.topLeading).padding(-40).foregroundColor(Color(red: 0.655, green: 0.716, blue: 0.783).opacity(20))
                //
                //                }
                
                
                
                Spacer()
                
            }
            .padding()
            .navigationBarItems(leading: Image("LOgo")
                .resizable()
                .frame(width: 150,height: 50)
                                //Image(systemName: "magnifyingglass")
                                
            )
        }
        
    }
}

//                    ZStack{
//
//                        RoundedRectangle(cornerRadius: 10.0).fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
//
//                        RoundedRectangle(cornerRadius: 10.0)
//                            .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2)
//
//                        ZStack{
//                            Text("Padel 101")
//                                .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
//                                .fontWeight(.bold)
//                            Text("Reserved on 31/07/2023")
//                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                                .padding(.bottom, 30)
//                                .fontWeight(.semibold)
//                            Text(" from 18:00 to 20:00")
//                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                                .padding(.bottom, -30)
//                                .fontWeight(.semibold)
//                            Image(systemName: "checkmark.circle.fill")
//                                .padding(.trailing,80)
//                                .padding(.top,80).frame(width: 100, height: 100)
//                            Text(" Approved")
//                                .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                                .padding(.top, 77)
//                                .fontWeight(.semibold)
//                                .padding(.leading,20)
//                        }
//                        Rectangle()
//                            .frame(width: 360,height:2,alignment:.topLeading).padding(-40).foregroundColor(Color(red: 0.655, green: 0.716, blue: 0.783).opacity(20))
//
//                    }




//.border(Color.black, width: 0.5)
//Previous Reservations

//.position(x:170,y:-120)
//                ZStack{
//
//                    RoundedRectangle(cornerRadius: 10.0)
//                        .fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
//
//                    RoundedRectangle(cornerRadius: 10.0)
//                        .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2)
//
//                    ZStack{
//                        Text("Padel 101")
//                            .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
//                            .fontWeight(.bold)
//                        Text("Reserved on 24/06/2023")
//                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                            .padding(.bottom, 30)
//                            .fontWeight(.semibold)
//                        Text(" from 14:00 to 16:00")
//                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                            .padding(.bottom, -30)
//                            .fontWeight(.semibold)
//                        Image(systemName: "checkmark.circle.fill")
//                            .foregroundColor(Color.green)
//                            .padding(.trailing,80)
//                            .padding(.top,80).frame(width: 100, height: 100)
//                        Text(" Approved")
//                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                            .padding(.top, 77)
//                            .fontWeight(.semibold)
//                            .padding(.leading,20)
//                    }
//                    Rectangle()
//                        .frame(width: 360,height:2,alignment:.topLeading).padding(-40).foregroundColor(Color(red: 0.655, green: 0.716, blue: 0.783).opacity(20))
//


//                }
//                ZStack{
//
//                    RoundedRectangle(cornerRadius: 10.0)
//                        .fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:140)
//
//                    RoundedRectangle(cornerRadius: 10.0)
//                        .strokeBorder (Color(red: 0.035, green: 0.235, blue: 0.459),lineWidth:2)
//
//                    ZStack{
//                        Text("PadelBall")
//                            .padding(.bottom, 103.0).foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
//                            .fontWeight(.bold)
//                        Text("Reserved on 12/04/2023")
//                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                            .padding(.bottom, 30)
//                            .fontWeight(.semibold)
//                        Text(" from 20:00 to 22:00")
//                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                            .padding(.bottom, -30)
//                            .fontWeight(.semibold)
//                        Image(systemName: "checkmark.circle.fill")
//                            .foregroundColor(Color.red)
//                            .padding(.trailing,80)
//                            .padding(.top,80).frame(width: 100, height: 100)
//
//                        Text("Missed")
//                            .foregroundColor(Color(hue: 0.589, saturation: 0.064, brightness: 0.439))
//                            .padding(.top, 77)
//                            .fontWeight(.semibold)
//                            .padding(.leading,20)
//                    }
//                    Rectangle()
//                        .frame(width: 360,height:2,alignment:.topLeading).padding(-40).foregroundColor(Color(red: 0.655, green: 0.716, blue: 0.783).opacity(20))
//                }
//
//
//
//
//
//
//







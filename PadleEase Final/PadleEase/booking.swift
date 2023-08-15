//
//  booking.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 19/01/1445 AH.
//

import SwiftUI

struct booking: View {
    @State private var rDate = Date.now
    @State private var rtime = ""
    @State private var z = 0
    
    
    @State var x : Court
    @State var vv = false
    
    
    @ObservedObject var viewModel : UserViewModel
    
    var body: some View {
        
        
        VStack(spacing: 10.0){
            
            
            
            //date
            GroupBox(label: Text("Select a Date").font(.title3).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458)))
            {
                Image(systemName: "calendar").offset(x: 160, y:-15).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                //
                Divider().frame(height: 3.0).overlay(Color(red: 0.032, green: 0.239,blue: 0.458))
                
                DatePicker( selection: $rDate, in: Date.now..., displayedComponents: .date){}.offset(x:-10)
                
                
                
            }.groupBoxStyle(ColoredGroupBox()).padding()
            
            //            Text("\(rDate.formatted(date: .long, time: .omitted))")
            
            // slot
            GroupBox(label: Text("Select a slot").font(.title3).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))) {
                Image(systemName: "clock").offset(x: 160, y: -15).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                Divider().frame(height: 3.0, alignment: .leading).overlay(Color(red: 0.032, green: 0.239,blue: 0.458))
                
                //                $rtime
                Picker(selection: $z, label: Text("Select a Slot")) {
                    Text("09:00 - 11:00").tag(1)
                    Text("11:00 - 13:00").tag(2)
                    Text("13:00 - 15:00").tag(3)
                    Text("15:00 - 17:00").tag(4)
                    Text("17:00 - 19:00").tag(5)
                    
                }.offset(x:80 )
                .onChange(of: z) { newValue in
                                switch newValue {
                                case 1: rtime = "09:00 - 11:00"
                                case 2: rtime = "11:00 - 13:00"
                                case 3: rtime = "13:00 - 15:00"
                                case 4: rtime = "15:00 - 17:00"
                                case 5: rtime = "17:00 - 19:00"
                                default: break
                                }
                            }
                
                
            }.groupBoxStyle(ColoredGroupBox()).padding()
            
            //total
            GroupBox(label: Text("Total:  \(String(x.price)) SAR")
                .font(.title2)
                .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                .padding(.bottom, -300)
                .padding(.leading, -30)
                     
            ) {
                VStack(alignment: .center, spacing: 20) { // Align the VStack content at the center
                    
                    Divider()
                        .frame(width: 330 ,height: 3.0)
                        .overlay(Color(red: 0.032, green: 0.239, blue: 0.458))
                    
                    Button("Reserve") {
                        viewModel.Prev.append(Res(time: rtime, court: x, date: rDate, past: false, att: 1))
                        vv = true
                    }
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .font(.title2)
                    .padding()
                    .frame(width: 200, height: 60)
                    .background(Color.white)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(red: 0.032, green: 0.239, blue: 0.458), lineWidth: 2)
                    )
                    .background(Color(red: 0.7064891458, green: 0.7666060328, blue: 0.8340758085))
                    .cornerRadius(15)
                    .foregroundColor(Color(red: 0.032, green: 0.239, blue: 0.458))
                    .sheet(isPresented: $vv) {
                        Prevrevervaions(viewModel: viewModel)
                    }
                }
                .padding()
            }
            .frame(width: 300, height: 200) // Adjust the width and height as needed
            .background(Color.white)
            .groupBoxStyle(ColoredGroupBox())
            .padding()
            .groupBoxStyle(ColoredGroupBox()).padding()
            
        }
        
        
    }}

struct ColoredGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
            }
            
            configuration.content
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
            .fill(.white)) // Set your color here!!
        
        
    }
}

//
//struct booking_Previews: PreviewProvider {
//    static var previews: some View {
//        booking(x: Court(img: "Image3", courtName: "PadelUp",owner:"Reem Alzahrani", price: 300,rating:3, like: false), viewModel: UserViewModel())
//    }
//}
//



//                                          Working HERE !!!!!
//                   NavigationLink(destination: Prevrevervaions(),label: {
//                       HStack {
//
//
//                           Text("Reserve")
//                               .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
//                               .font(.title3)
//                               .padding()
//                               .frame(width: 300, height: 60, alignment: .leading)
//                               .background(Color(red: 0.937, green: 0.962, blue: 0.983))
//                               .cornerRadius(10)
//                       }
//
//                   }).onTapGesture {
//
//                       viewModel.addres(Res(time: rtime, court: x, date: rDate, past: false))
//                       print("☕️")
//
//                   }
//                   NavigationLink{
//                       viewModel.addres(Res(time: rtime, court: x, date: rDate, past: false))
//                       Prevrevervaions()
//                   }
//               label:{
//                   HStack {
//
//
//                       Text("Reserve")
//                           .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
//                           .font(.title3)
//                           .padding()
//                           .frame(width: 300, height: 60, alignment: .leading)
//                           .background(Color(red: 0.937, green: 0.962, blue: 0.983))
//                           .cornerRadius(10)
//                   }
//
//               }

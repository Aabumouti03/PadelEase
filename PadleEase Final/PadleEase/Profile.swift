//
//  Profile.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 20/01/1445 AH.
//

import SwiftUI

struct Profile: View {
    @ObservedObject var viewModel : UserViewModel
    @State var name="Dana"
    @State var num="05544332211 "
    @State var age="23 "
    @State var gender="Female"
    @State var about="Professional padel player"
    
    var body: some View {
        NavigationView{
            
            
            VStack{
                //                    RoundedRectangle(cornerRadius: 10.0).frame(width:360,height:40).foregroundColor(.white)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10.0).fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:160)
                    
                    RoundedRectangle(cornerRadius: 10.0)
                        .strokeBorder (Color(red: 0.035, green: 0.235, blue:0.459),lineWidth:2).frame(width:360,height: 160)
                    
                    
                    VStack{
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10.0).fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:160)
                            
                            RoundedRectangle(cornerRadius: 10.0)
                                .strokeBorder (Color(red: 0.035, green: 0.235, blue:0.459),lineWidth:2).frame(width:360,height: 160)
                            
                            Image("yara").resizable()
                                .frame(width: 110,height: 110,alignment: .leading).scaledToFit()
                                .clipped().clipShape(Circle())
                                .padding(.leading, 180)
                            
                            VStack(alignment: .leading) {
                                Text("Hi " + name + ",")
                                    .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                                    .font(.title2)
                                
                                Text("Gender: " + gender + "\nAge: " + age)
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .font(.title3)
                                
                                Text("About: " + about)
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .font(.title3)
                            }
                            .frame(width: 180, height: 200, alignment: .leading)
                            .padding(.trailing, 130)
                            
                        }
                    }
                }
                
                //                        RoundedRectangle(cornerRadius: 10.0).frame(width:360,height:5).foregroundColor(.white)
                ScrollView{
                    
                    VStack {
                        
                        
                        ZStack {
                            NavigationLink(destination: profileInfo(name: $name,num: $num, age: $age, gender: $gender, about: $about )){
                                RoundedRectangle(cornerRadius: 10.0)
                                    .fill(Color(red: 0.937, green: 0.962, blue: 0.983))
                                    .frame(width: 360, height: 60)
                            }
                            
                            RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color(red: 0.035, green: 0.235, blue: 0.459), lineWidth: 2).frame(width: 360, height: 60)
                            
                            HStack {
                                Text("Personal Information")
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .font(.title3)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                Image(systemName: "person")
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .padding(.trailing, 10)
                            }.frame(width: 360, height: 60)
                        }
                        NavigationLink(destination: Payment(viewModel: viewModel)) {
                            HStack {
                                Text("Payment")
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .font(.title3)
                                    .padding()
                                    .frame(width: 300, height: 60, alignment: .leading)
                                    .background(Color(red: 0.937, green: 0.962, blue: 0.983))
                                    .cornerRadius(10)
                                
                                
                                Image(systemName: "dollarsign.circle")
                                    .padding(.leading,-18)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                
                                
                            }.overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(red: 0.035, green: 0.235, blue: 0.459), lineWidth: 2)) .background(Color(red: 0.937, green: 0.962, blue: 0.983))
                        }
                        
                        Spacer()
                        NavigationLink(destination: Likes(viewModel: viewModel)) {
                            HStack {
                                Text("Liked Courts")
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .font(.title3)
                                    .padding()
                                    .frame(width: 290, height: 60, alignment: .leading)
                                    .background(Color(red: 0.937, green: 0.962, blue: 0.983))
                                    .cornerRadius(10)
                                    
                                
                                
                                Image(systemName: "heart.circle.fill")
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .padding(.trailing, 10)
                                
                                
                            }.overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .strokeBorder(Color(red: 0.035, green: 0.235, blue: 0.459), lineWidth: 2)) .background(Color(red: 0.937, green: 0.962, blue: 0.983))
                              
                        }
                                       
                                       
                                       
                                       ZStack {
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color(red: 0.937, green: 0.962, blue: 0.983))
                                .frame(width: 360, height: 60)
                            
                            RoundedRectangle(cornerRadius: 10.0)
                                .strokeBorder(Color(red: 0.035, green: 0.235, blue: 0.459), lineWidth: 2)
                                .frame(width: 360, height: 60)
                            
                            HStack {
                                Text("Terms & Conditions")
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .font(.title3)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Spacer()
                                
                                Image(systemName: "book")
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color(red: 0.035, green: 0.235, blue: 0.459))
                                    .padding(.trailing, 10)
                            }
                            .frame(width: 360, height: 60)
                        }
                                       
                                       
                                       
                                       }
                                       
                                       
                                       
                                       
                                       }}.navigationBarItems(leading: Image("LOgo")
                                        .resizable()
                                        .frame(width: 150,height: 50)
            )
                                                             //Image(systemName: "magnifyingglass")
                                           
            
                        }
                        
                        }
                        }

                        //struct Profile_Previews: PreviewProvider {
                        //    static var previews: some View {
                        //        Profile()
                        //    }
                        //}

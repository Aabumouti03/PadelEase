//
//  profileInfo.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 24/01/1445 AH.
//

import SwiftUI

import SwiftUI
struct profileInfo: View {
    //@Binding var viewModel: User
    @Binding var name: String
    @Binding var num: String
    @Binding var age: String
    @Binding var gender: String
    @Binding var about: String
    @State private var showingAlert = false
    var body: some View {
        
        VStack{
            
            Image("yara").resizable()
                .frame(width: 200,height: 200,alignment: .leading).scaledToFit()
                .clipped().clipShape(Circle()).padding(.bottom,40)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10.0).fill(Color(red: 0.937, green: 0.962, blue: 0.983)).frame(width:360,height:400)
                RoundedRectangle(cornerRadius: 10.0)
                    .strokeBorder (Color(red: 0.035, green: 0.235, blue:0.459),lineWidth:2).frame(width:360,height: 400)
                VStack{
                    HStack{
                        
                        Text("Name:  ").font(.title2).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        TextField("name", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459)).font(.title2).frame(width: 200)}
                    
                    HStack{
                        Text("Phone: ").font(.title2).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        TextField("number", text: $num).textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459)).font(.title2).frame(width: 200)
                    }
                    HStack{
                        Text("Age:     ").font(.title2).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        TextField("age", text: $age).textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459)).font(.title2).frame(width: 200)
                    }
                    HStack{
                        Text("Gender:").font(.title2).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        TextField("gender", text: $gender).textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459)).font(.title2).frame(width: 200)
                    }
                    
                    HStack{
                        Text("About:  ").font(.title2).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                        TextField("about", text: $about).textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459)).font(.title2).frame(width: 200)}
                    
                    Button("Update") {
                        showingAlert = true
                        
                    }
                    .frame(width: 200,height: 50.0).background(Color(red: 0.7064891458, green: 0.7666060328, blue: 0.8340758085))  .controlSize(.large).cornerRadius(15).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458)).alert(isPresented: $showingAlert) {
                        Alert(title: Text("Your information is updated now"), message: Text(""), dismissButton: .default(Text("Got it!")))
                    }
                    
                }
                Spacer()
            }.padding(.top, -30)
            Spacer()
        }
        
        
        Spacer()
        
       
        
        
    }
    
}


struct profileInfo_Previews: PreviewProvider {
    static var previews: some View {
        profileInfo(name: .constant("Dana "),num: .constant("05544332211  "),age: .constant("23 "),gender: .constant("Female "),about: .constant("... ") )
    }
}

//struct profileInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        profileInfo()
//    }
//}

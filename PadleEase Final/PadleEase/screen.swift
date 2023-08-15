//
//  screen.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//

import SwiftUI



struct screen: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var cardviewModel : cardViewModel
    @State var num  : String
    @State var date  : String
    @State var name  : String
    @State var cvv  : String
    
    
    var body: some View {
     
        
        
        VStack{
            
            //1
            Text("Card Number: ").padding(.leading)
            TextField("eg 1234 1234 1234 ", text: $num)
                .frame(width: 250,height: 50.0)
                .background(Color(#colorLiteral(red: 0.7822422385, green: 0.818264544, blue: 0.8233085275, alpha: 0.7146885348)))  .controlSize(.large)
                    .cornerRadius(15)
                    .foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
            
            //2
            Text("Full Name : ").padding(.leading)
TextField("NOUF ALKHASHAN", text: $name) .frame(width: 250,height: 50.0)
                .background(Color(#colorLiteral(red: 0.7822422385, green: 0.818264544, blue: 0.8233085275, alpha: 0.7146885348)))  .controlSize(.large)
                   .cornerRadius(15)
                    .foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))

           //3
            Text("Expire Date : ").padding(.leading)
             TextField("eg 05/29", text: $date) .frame(width: 250,height: 50.0)
                .background(Color(#colorLiteral(red: 0.7822422385, green: 0.818264544, blue: 0.8233085275, alpha: 0.7146885348)))  .controlSize(.large)
                   .cornerRadius(15)
                   .foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))

    //4
            Text("CVV: ").padding(.leading)
            TextField("CVV", text: $cvv) .frame(width: 250,height: 50.0)
                .background(Color(#colorLiteral(red: 0.7822422385, green: 0.818264544, blue: 0.8233085275, alpha: 0.7146885348)))  .controlSize(.large)
                   .cornerRadius(15)
                    .foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
            
            
            
            Button(action: SaveButtonPressed,
                   label:
                    {
                Text("Save").frame(width: 100,height: 50.0).background(Color(red: 0.7064891458, green: 0.7666060328, blue: 0.8340758085))  .controlSize(.large).cornerRadius(15).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
            })
           
            
        }//end of vstack
        
      
    }
    func SaveButtonPressed()
    {
        cardviewModel.addItem(cardnumber:num , name: name, cardExp: date, cvv: cvv)
        presentation.wrappedValue.dismiss()
    }
    
}

struct screen_Previews: PreviewProvider {
    static var previews: some View {
        screen(num: "", date: "", name: "", cvv: "")
    }
}


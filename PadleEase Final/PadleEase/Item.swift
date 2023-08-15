//
//  Item.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//
import SwiftUI



struct Item: View {
    
    let item : cardinfoModel
    
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "creditcard.fill")
                    .resizable(resizingMode: .stretch).frame(width: 25, height: 25)
                Text("VISA").fontWeight(.black)
            }
            
            VStack(alignment: .center){
                Text("  \(item.cardHolderName)").fontWeight(.black)
                    
                
                VStack(alignment: .center){
                    Text("        \(item.cardnum)")
                    
                    
                    Text("        \(item.cardExp)")
                }
               // Text("\(item.CVV)")
            }
                Spacer()
           
            
        }
    }
}

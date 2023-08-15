//
//  PaymentMethod.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//
import SwiftUI

struct PaymentMethod: View {
    
    @EnvironmentObject var obj : cardViewModel
    @State var showingPopover = false
    
    var body: some View {
        
        NavigationStack {
            
         
            List{
                ForEach(obj.cards) { cardinfoModel in Item(item: cardinfoModel)
                    
                        HStack{
                        
                           
                        }
                    .listRowBackground(Color(red: 0.937, green: 0.962, blue: 0.983))
                }
             
                .onDelete(perform:obj.delete)
            }
            .multilineTextAlignment(.center)
            .navigationBarItems(leading: Text("Payment Methods") .fontWeight(.black).font(.title).padding(.top, 30.0)
                                ,
                                
                                trailing: Text(""))
            
            Button("Add Card") {
                            showingPopover.toggle()
                            
                        }.frame(width: 300,height: 70).background(Color(red: 0.7064891458, green: 0.7666060328, blue: 0.8340758085))  .controlSize(.regular).cornerRadius(15).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                            .padding(.vertical).sheet(isPresented: $showingPopover, content: {
                                screen(num: "", date: "", name: "", cvv: "")
                                
                                
                                
                                
                            })
            
            
        }
        
        
        
        
        
        
        
        
        
        
        .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
        
        
        
        
        
      
        
        
    }//body
}

struct PaymentMethod_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PaymentMethod(showingPopover: false)
        }.environmentObject(cardViewModel())
    }
}

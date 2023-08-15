//
//  cardViewModel.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//

import Foundation

class cardViewModel : ObservableObject {
    
    @Published var cards : [cardinfoModel] = []
    
    init()
    {
        getItem()
    }
    
    
    func getItem()
    {
        let newItem = [
            cardinfoModel(cardnum: "234 567 433 223", cardHolderName: "Ghala Nasser ", cardExp: "05/26", CVV: "234"),
            cardinfoModel(cardnum: "232 456 675 879", cardHolderName: "Lamya Nasser ", cardExp: "02/25", CVV: "456")]
        
        cards.append(contentsOf: newItem)
    }
    
    func addItem(cardnumber: String, name: String, cardExp: String, cvv: String){
        let addingItem = cardinfoModel(cardnum: cardnumber, cardHolderName: name, cardExp: cardExp, CVV: cvv)
        cards.append(addingItem)
        
    }
    
    func delete(at offsets: IndexSet) {
        cards.remove(atOffsets: offsets)
    }
    
}

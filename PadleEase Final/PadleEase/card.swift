//
//  card.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 26/01/1445 AH.
//

import Foundation

struct cardinfoModel : Identifiable{
    let id = UUID().uuidString
    var cardnum : String
    var cardHolderName : String
    var cardExp : String
    var CVV : String
    //ending with
    
}


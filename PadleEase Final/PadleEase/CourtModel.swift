//
//  Court.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 14/01/1445 AH.
//

import Foundation
import SwiftUI



struct Court : Identifiable, Equatable{
    let id = UUID().uuidString
    var img: String
    var courtName: String
    var owner : String
    var price: Int
    var rating: Int
    var like: Bool
    
    init(img: String, courtName: String, owner: String, price: Int, rating: Int, like: Bool) {
        self.img = img
        self.courtName = courtName
        self.owner = owner
        self.price = price
        self.rating = rating
        self.like = like
    }
}

struct Res : Identifiable{
    let id = UUID().uuidString
    var time: String
    var court: Court
    var date : Date
    var past : Bool
    var att : Int
}



//    var Reser : [Res] =
//  [
//    Res(time: "14:00 to 16:00", court:Court(img: "Image1", courtName: "Padel101",owner:"Nouf Saleh", price: 150,rating:4) , date: Date.now)
//
//  ]
    
    
    


//struct reser

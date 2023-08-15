//
//  UserViewModel.swift
//  PadleEase
//
//  Created by Alanoud Abumouti on 22/01/1445 AH.
//

import SwiftUI

class UserViewModel: ObservableObject {
    
    @Published var Arraycourts: [Court] =
    [
        Court(img: "Image1", courtName: "Padel101", owner: "Nouf Saleh", price: 150, rating: 4, like: false),
        Court(img: "Image2",
              courtName: "Najd Padel Court", owner: "Anoud Abumouti", price: 200, rating: 5, like: false),
        Court(img: "Image3", courtName: "PadelUp", owner: "Reem Alzahrani", price: 300, rating: 3, like: false),
        Court(img: "Ss", courtName: "Padellna", owner: "Lina Mohammed", price: 300, rating: 2, like: false),
        Court(img: "Image4", courtName: "J Padel", owner: "Asool Rajab", price: 300, rating: 4, like: false)
    ]
    
    @Published var Prev: [Res] = []
    
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        Prev = [
            Res(time: "09:00 - 11:00", court: Arraycourts[1], date: dateFormatter.date(from: "17/08/2023")!, past: false, att: 1),
            Res(time: "14:00 - 16:00", court: Arraycourts[4], date: dateFormatter.date(from: "03/04/2023")!, past: true, att: 3),
            Res(time: "16:00 - 18:00", court: Arraycourts[0], date: dateFormatter.date(from: "16/06/2023")!, past: true, att: 2),
            Res(time: "09:00 - 11:00", court: Arraycourts[2], date: dateFormatter.date(from: "01/07/2023")!, past: true, att: 3)
        ]
    }
    
    func toggleLike(x: Court) {
        if let index = Arraycourts.firstIndex(where: { $0.id == x.id }) {
            Arraycourts[index].like.toggle()
        }
    }
    
    var courts: [Court] {
        return Arraycourts
    }
    
    func addcourt(_ court: Court) {
        Arraycourts.append(court)
    }
    
    var Pres: [Court] {
        return Arraycourts
    }
    
    func addres(_ res: Res) {
        Prev.append(res)
    }
}


//
//import SwiftUI
//
//class UserViewModel: ObservableObject{
//
//    @Published  var Arraycourts : [Court] =
//    [
//        Court(img: "Image1", courtName: "Padel101",owner:"Nouf Saleh", price: 150,rating:4, like: false),
//        Court(img: "Image2",
//              courtName: "Najd Padel Court",owner:"Anoud Abumouti", price: 200,rating:5, like: false),
//        Court(img: "Image3", courtName: "PadelUp",owner:"Reem Alzahrani", price: 300,rating:3, like: false),
//        Court(img: "Image3", courtName: "Padellna",owner:"Lina Mohammed", price: 300,rating:2, like: false),
//        Court(img: "Image4", courtName: "J Padel",owner:"Asool Rajab", price: 300,rating: 4, like: false)
//    ]
//
//    @Published  var Prev : [Res] =
//    [
//        Res(time: "09:00 - 11:00", court: Court(img: "Image2",
//            courtName: "Najd Padel Court",owner:"Anoud Abumouti", price: 200,rating:5, like: false), date: .distantFuture, past: false, att: 1),
//        Res(time: "14:00 - 16:00", court: Court(img: "Image4", courtName: "J Padel",owner:"Asool Rajab", price: 300,rating: 4, like: false), date: .distantPast, past: true, att: 3),
//        Res(time: "16:00 - 18:00", court: Court(img: "Image1", courtName: "Padel101",owner:"Nouf Saleh", price: 150,rating:4, like: false), date: .distantPast, past: true, att: 2),
//        Res(time: "09:00 - 11:00", court: Court(img: "Image3", courtName: "PadelUp",owner:"Reem Alzahrani", price: 300,rating:3, like: false), date: .distantPast, past: true, att:3)
//    ]
//
//
//    var courts: [Court] {
//        return Arraycourts
//    }
//
//    func addcourt(_ court: Court){
//        Arraycourts.append(court)
//    }
//
//    var Pres: [Court] {
//        return Arraycourts
//    }
//
//    func addres(_ res: Res){
//        Prev.append(res)
//    }
//
//
//
//
//}
//
//

//
//  stars.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 21/01/1445 AH.
//

import SwiftUI

struct stars: View {
    let rating: Int
    let maxRating: Int
    
    var body: some View {
        HStack {
                   ForEach(1...maxRating, id: \.self) { index in
                       Image(systemName: index <= Int(rating) ? "star.fill" : "star")
                           .foregroundColor(index <= Int(rating) ? .yellow : .gray)
                           .font(.system(size: 20))
                   }
               }    }
}


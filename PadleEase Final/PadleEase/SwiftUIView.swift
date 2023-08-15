//
//  SwiftUIView.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 16/01/1445 AH.
//

import SwiftUI

struct SwiftUIView: View {
    @State var isLiked = false
    var body: some View {
        Button
        {
            self.isLiked.toggle()
        } label:
        {
            Image(systemName: isLiked ? "heart.fill" : "heat").tint(isLiked ? .red : .black).font(.system(size: 20))
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

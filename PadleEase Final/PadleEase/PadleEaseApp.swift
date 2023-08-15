//
//  PadleEaseApp.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 14/01/1445 AH.
//

import SwiftUI

@main
struct PadleEaseApp: App {
    
    @StateObject var CardViewModel : cardViewModel = cardViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                splash()
            }.environmentObject(CardViewModel)
        }
    }
}

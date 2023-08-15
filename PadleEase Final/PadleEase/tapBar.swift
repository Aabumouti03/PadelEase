//
//  tapBar.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 16/01/1445 AH.
//

import SwiftUI

struct tapBar: View {
    @StateObject var CardViewModel : cardViewModel = cardViewModel()
    @StateObject var viewModel = UserViewModel()
    var body: some View {
        TabView {
            
            

            ContentView(viewModel: viewModel).tabItem {
                    Label("Explore", systemImage: "sportscourt.fill")
                }
            
            Prevrevervaions(viewModel: viewModel)
                .tabItem {
                    Label("Reservations",systemImage:"calendar")
                }
            
            Profile(viewModel: viewModel)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            
            
            
//            
        }
        
    }
}

struct tapBar_Previews: PreviewProvider {
    static var previews: some View {
        tapBar()
    }
}

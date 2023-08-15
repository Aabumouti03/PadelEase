//
//  search.swift
//  PadleEase
//
//  Created by Nouf Alkhashan on 21/01/1445 AH.
//

import SwiftUI

struct search: View {
    
    @ObservedObject var viewModel : UserViewModel
    
    @State private var t = true
    @State private var f = false
    @State private var sliderValue: Double = .zero
    @State private var isEditing = false
    @State private var fDate = Date.now
    @State private var showingPopover = false
    
    @State private var searchText = ""
    var listofcourt = courtlist
   
    var body: some View {
        NavigationView {
            
            VStack {
              
                List {
                    
                   
                        
                        ForEach(courts, id: \.self) { court in
                            HStack {
                                Text(court.capitalized)
                                Spacer()
                                Image(systemName: "sportscourt")
                                    .foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                            }
                            .padding()
                        }

                    }
                    
             .searchable(text: $searchText)
//               .navigationTitle("Search")
             .navigationBarItems(leading: Text("Search").font(.largeTitle).bold(),
                                   trailing:  Button {
                   showingPopover = true
               }label: {
                   Image(systemName: "slider.vertical.3").foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
               }
               .controlSize(.large)
//                    .padding(.leading, 300.0).padding(.top, 50.0)
               
                   .popover(isPresented: $showingPopover) {
                       VStack {
                           GroupBox{
                               Toggle(isOn: $f) {
                                   Text("Female only court?").bold().foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                               }
                           }.groupBoxStyle(ColoredGroupBox())
                           
                           GroupBox(label: Text("Price Range").bold().foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))) {
                               Slider(value: $sliderValue,in: 30...500)
                               {
                                   Text("Values from 30 to 500")
                               } minimumValueLabel: {
                                   Text("30 SAR").foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                               } maximumValueLabel: {
                                   Text("500 SAR").foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                               } onEditingChanged: { editing in
                                   isEditing = editing
                               }
                               Text("\(sliderValue, specifier: "%.f")")
                                   .foregroundColor(isEditing ? .black : Color(red: 0.032, green: 0.239,blue: 0.458))
                           }.groupBoxStyle(ColoredGroupBox())
                           GroupBox{
                               DatePicker( selection: $fDate, in: Date.now..., displayedComponents: .date){Text("Date").bold().foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))}}.groupBoxStyle(ColoredGroupBox()).padding()
                           
                           //////////
                           HStack {
                               
                               Button("Cancel") { }.foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                               
                               Button("Search") {}.frame(width: 200,height: 50.0).background(Color(red: 0.7064891458, green: 0.7666060328, blue: 0.8340758085))  .controlSize(.large).cornerRadius(15).foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
                               
                               
                               
                               
                           }
                       }
                       
                   }// end of pop
                                      
               )
               
           
} }}
    var courts: [String] {
        // Make countries lowercased
        let lcourt = listofcourt.map { $0.lowercased() }
        
        return searchText == "" ? lcourt : lcourt.filter { $0.contains(searchText.lowercased()) }
    }
    
}

//struct search_Previews: PreviewProvider {
//    static var previews: some View {
//        search(viewModel : UserViewModel)
//    }
//}

//
//ForEach(courts, id: \.self) { court in
//    HStack {
//        Text(court.capitalized)
//        Spacer()
//        Image(systemName: "sportscourt")
//            .foregroundColor(Color(red: 0.032, green: 0.239,blue: 0.458))
//    }
//    .padding()
//}

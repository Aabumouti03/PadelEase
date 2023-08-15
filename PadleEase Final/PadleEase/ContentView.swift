

import SwiftUI


struct ContentView: View {
    
    
    @ObservedObject var viewModel : UserViewModel
    @State var isLiked = false
    
    
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical){
                
                
                
                
                VStack{
                    
//                    ForEach(viewModel.Arraycourts) { court in
//                        NavigationLink(destination: {
//                            ReservationDetails(courtDeet: court, viewModel: viewModel)
//                        }) {
//                            CourtView(courtm: court)
//                                .onTapGesture {
//                                    viewModel.toggleLike(x: court)
//                                }
//                        }
//                    }
                    
                                        ForEach(viewModel.Arraycourts){   Court in
                    
                                            NavigationLink(destination: {
                    
                                                ReservationDetails(courtDeet: Court, viewModel: viewModel)
                    
                    
                                            }, label: {
                    
                                                CourtView(courtm: Court, viewModel: viewModel)
                                            })
                                        }
                }//end of vstack
                
                
            }.navigationBarItems(leading: Image("LOgo")
                .resizable()
                .frame(width: 150,height: 50),
                                 //Image(systemName: "magnifyingglass")
                                 trailing:
                                    NavigationLink(
                                        destination: search(viewModel: viewModel), label:{ Image(systemName: "magnifyingglass")
                                                .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
                                        })
            )
            
            
        }//navigaionView
        
    }//body
}//content view












//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}




//
//
//struct ContentView: View {
//
//
//    @ObservedObject var viewModel : UserViewModel
//    @State var isLiked = false
//
//
//
//    var body: some View {
//
//        NavigationView{
//
//            ScrollView(.vertical){
//
//
//
//
//                VStack{
//                    ForEach(viewModel.Arraycourts){   Court in
//
//                        NavigationLink(destination: {
//
//                            ReservationDetails(courtDeet: Court, viewModel: viewModel)
//
//
//                        }, label: {
//                                        CourtView(courtm: Court)
//
//                            VStack{
//
//                                ZStack{
//                                    VStack{
//
//
//
//
//                                        Image(Court.img)
//                                            .resizable()
//                                            .cornerRadius(10)
//                                            .frame(width: 360 , height: 140);
//
//                                        HStack{
//                                            Text("\(Court.courtName)")
//                                                .multilineTextAlignment(.leading).cornerRadius(10).foregroundColor(Color(hue: 0.6, saturation: 1.0, brightness: 0.568))
//                                                .fontWeight(.bold)
//                                                .font(.system(size: 23))
//
//                                            Spacer()
////                                            Button{
////                                                isLiked.toggle()
////                                                //                                                if (Court.like == false)
////                                                //                                                {
////                                                //                                                    viewModel.courts.filter{$0 == Court}.first?.like = true
////                                                //
////                                                //                                                }
////                                                //                                                else
////                                                //                                                {
////                                                //                                                    viewModel.courts.filter{$0 == Court}.first?.like = true
////                                                //                                                }
////                                            }
////                                        label:
////                                            {
////                                                Image(systemName: isLiked ? "heart.circle.fill" : "heart.circle").tint(isLiked ? .red : .black).font(.system(size: 25))
////
////                                            }
//
//                                        }// H stack
//
//
//                                    }.padding()
//                                        .background(.gray.opacity(0.3))
//                                        .cornerRadius(20) /// make the background rounded
//                                        .overlay( /// apply a rounded border
//                                            RoundedRectangle(cornerRadius: 20)
//                                                .stroke(lineWidth: 6)
//                                        )//end of v stack
//                                }.frame(width: 360, height: 177).padding(3)
//                                    .cornerRadius(10)
//                                //z stack
//
//
//                            }.padding()//end of v stack
//
//                        })
//                    }
//
//
//
//
//
//                }//end of vstack
//
//            }.navigationBarItems(leading: Image("LOgo")
//                .resizable()
//                .frame(width: 150,height: 50),
//                                 //Image(systemName: "magnifyingglass")
//                                 trailing:
//                                    NavigationLink(
//                                        destination: search(), label:{ Image(systemName: "magnifyingglass")
//                                                .foregroundColor(Color(red: 0.027, green: 0.235, blue: 0.459))
//                                        })
//            )
//        }   }//navigaionView
//
//}////body
//
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}

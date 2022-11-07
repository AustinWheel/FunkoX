//
//  HomeView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/4/22.
//

import SwiftUI

struct HomeView: View {
    private let numberOfImages = 4
    private let timer = Timer.publish(every: 7, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    private let image = ["FunkoX-7", "FunkoX-8", "FunkoX-9", "FunkoX-10"]
    private let catText = ["Animation", "Television", "Games", "Marvel", "Starwars"]
    
    private let name = ["Stitch - Lilo and Stitch", "Megumi - Ju Jutsu Kaisen", "Hello Kitty - Hello Kitty", "Boba Fett - StarWars", "Winnie the Poo - Winnie the Poo", "Batman - The Batman", "Captain America - Avengers", "Vegeta(With Apron) - Dragon Ball Super", "Samurai Brook - One Peice", "Black Star - Soul Eater"]
    
    private let retail = [23, 12, 9, 13, 18, 14, 17, 16, 37, 70]
    private let lowest = [20, 10, 5, 15, 35, 10, 15, 40, 30, 120]
    private let available = [12, 4, 21, 11, 6, 4, 12, 20, 13, 18]
    
    private let textColor = Color(red: 118/255, green: 160/255, blue: 200/255)
    private let backColor = Color(red: 61/255, green: 65/255, blue: 66/255)
    
    @State var nav = false
    @State var nav2 = false
    @State var nav3 = false
    
    //    private let KittyFore = Color(red: 233, green: 44, blue: 76)
    //    private let KittyBack = Color.white
    //
    //    private let MandaFore = Color.white
    //    private let MandaBack = Color(red: 117, green: 181, blue: 134)
    //
    //    private let animeFore = Color.white
    //    private let animeBack = Color(red: 6, green: 71, blue: 115)
    //
    //    private let HouseFore = Color(red: 251, green: 122, blue: 79)
    //    private let HouseBack = Color.black
    
    private let fore = [Color.orange, Color.white, Color.white, Color.pink]
    private let back = [Color.black, Color.black, Color.black, Color.white]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                //Contains entire HomeScreen
                VStack {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .padding(.leading)
                        Spacer()
                        Text("Search All Marketplaces")
                            .padding(.trailing, 240)
                            
                        
                            
                    
                    }
                    .frame(width: 360, height: 30)
                    .background(self.backColor)
                    .foregroundColor(Color.white.opacity(0.65))
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.top, 10)
                    //.padding(.bottom, 5)
                    //.padding(.leading, 10)
                    //.padding(.trailing, 300)

                    
                    //Contains featured page
                    VStack(alignment: .leading) {
                        //Creates swipable interface for images
                        TabView(selection: $currentIndex) {
                            ForEach(0..<numberOfImages) { num in
                                ZStack(alignment: .bottomLeading) {
                                    Image(image[num])
                                        .resizable()
                                        .scaledToFit()
                                        .overlay(Color.gray.opacity(0.1))
                                        .tag(num)
                                    
//                                    NavigationLink("Explore Collections", destination: Text("Screen"))
//                                        .padding(.top, 3)
//                                        .padding(.bottom, 3)
//                                        .padding(.leading, 5)
//                                        .padding(.trailing, 5)
//                                        .background(back[num])
//                                        .foregroundColor(fore[num])
//                                        .clipShape(RoundedRectangle(cornerRadius:10))
//                                        .padding(.leading, 13)
//                                        .padding(.bottom, 24)
//                                        .font(.footnote)
                                    
                                    
                                }
                            }
                        }
                        
                        
                        .tabViewStyle(PageTabViewStyle())
                        
                        .frame(height: 200)
                        .onReceive(timer, perform: { _ in
                            withAnimation {
                                currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0}})
                    }
                    
                    
                    HStack{
                        Text("Shop By Category")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .bold()
                            .font(.title3)
                        
                    }
                    ScrollView(.horizontal) { //ScrollView(1)
                        LazyHStack(alignment: .top, spacing: 10) {
                            HStack(spacing: 15) {
                                ForEach(2...6, id: \.self) { count in
                                    VStack{
                                        NavigationLink(destination: Text("Works?"), isActive: $nav, label: { EmptyView() })
                                        Button {
                                            //nav = true
                                        } label: {
                                            Image("FunkoX-\(count)")
                                                .resizable()
                                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                        }
                                        Text(catText[count-2])
                                    }
                                    
                                }
                            }
                            .padding(.leading)
                            .frame(width: 650, height: 135, alignment: .leading)
                        }
                    } //ENDS (1)
                    .scrollIndicators(.hidden)
                    HStack {
                        Text("Recommended For You")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .bold()
                            .font(.title3)
                    }
                    ScrollView(.horizontal) { //ScrollView(2)
                        LazyHStack(alignment: .top, spacing: 10) {
                            HStack(spacing: 15) {
                                ForEach(11...20, id: \.self) { count in
                                    VStack{
                                        NavigationLink(destination: CaptainAmericaView(), isActive: $nav2, label: { EmptyView() })
                                        Button {
                                            nav2 = true
                                        } label: {
                                            Image("FunkoX-\(count)")
                                                .resizable()
                                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                        }
                                        .frame(width: 135, height: 130)
                                        VStack {
                                            Text(name[count-11]) //Name
                                            Text("Retail: $\(retail[count-11])") //Trading
                                            Text("Lowest: $\(lowest[count-11])") //
                                            Text("\(available[count-11]) available for trade/sell")
                                        }
                                        .multilineTextAlignment(.center)
                                            .frame(width: 120, height: 130)
                                            .truncationMode(.tail)
                                    }
                                    .padding()
                                    .background(Color.gray.opacity(0.1))
                                    .border(.gray, width: 0.5)

                                }
                            }
                            .padding(.leading)
                            //.frame(width: 1500, height: 135, alignment: .leading)
                        }
                    } //ENDS (2)
                    .scrollIndicators(.hidden)
                    HStack{
                        Text("Trending Funko Pops")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .bold()
                            .font(.title3)
                    }
                    ScrollView(.horizontal) { //ScrollView(3)
                        LazyHStack(alignment: .top, spacing: 10) {
                            HStack(spacing: 15) {
                                ForEach((11...20).reversed(), id: \.self) { count in
                                    VStack{
                                        NavigationLink(destination: CaptainAmericaView(), isActive: $nav3, label: { EmptyView() })
                                        Button {
                                            nav3 = true
                                        } label: {
                                            Image("FunkoX-\(count)")
                                                .resizable()
                                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                        }
                                        .frame(width: 135, height: 130)
                                        VStack {
                                            Text(name[count-11]) //Name
                                            Text("Retail: $\(retail[count-11])") //Trading
                                            Text("Lowest: $\(lowest[count-11])") //
                                            Text("\(available[count-11]) available for trade/sell")
                                        }
                                        .multilineTextAlignment(.center)
                                        .frame(width: 120, height: 130)
                                            .truncationMode(.tail)
                                        
                                        
                                        
                                    }
                                    .padding()
                                    .background(Color.gray.opacity(0.1))
                                    .border(.gray, width: 0.5)
                                    
                                }
                            }
                            .padding(.leading)
                            //.frame(width: 1500, height: 135, alignment: .leading)
                        }
                    } //ENDS (3)
                    .scrollIndicators(.hidden)
                }//ENDS homepage VStack
                
            }
            .background(Color.white)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "bell")
                            .foregroundColor(self.textColor)
                            .padding(.horizontal)
                            .bold()
                    }
                    
                }
                ToolbarItem(placement: .navigation) {
                        Image("FunkoXLogo")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(height: 40)
                        .padding(.leading, 5)
                        .padding(.bottom, 3)
                        
                   
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "person")
                            .foregroundColor(self.textColor)
                            .padding(.horizontal)
                            .bold()
                    }
                    
                }
                
               
            }
            .background(self.backColor)/////
            .toolbarBackground(.visible, for: .navigationBar)
            }
            
            .scrollIndicators(.hidden)
        }
        //.navigationBarHidden(false)
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  CaptainAmericaView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/5/22.
//

import SwiftUI

struct CaptainAmericaView: View {
    private let textColor = Color(red: 118/255, green: 160/255, blue: 200/255)
    private let boxColor = Color(red: 61/255, green: 65/255, blue: 66/255)
    @State var navigate = false
    
    @State var nav = false
    private let numberOfImages = 2
    @State private var currentIndex = 0
    @State private var nav4 = false
    private let retail = [12, 25, 13, 26, 12, 12, 13, 12]
    private let lowest = [14, 50, 13, 45, 77, 20, 11, 7]
    private let available = [12, 1, 6, 7, 2, 11, 5, 10]
    private let name = ["Iron Man - Avengers", "Loki - Avengers Endgame", "Scarlet Witch - Wanda Vision", "Thanos - Avengers Endgame", "Spiderman - No Way Home", "Thor - Love and Thunder", "Hulk - Marvel", "Hawkeye - Hawkeye"]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    HStack {
                        NavigationLink(destination: TradeView(), isActive: $nav, label: { EmptyView() })
                        //NavigationLink(destination: HomeView(), isActive: $navigate, label: { EmptyView() })
                        Button {
                            //nav = true
                        } label: {
                            Text("$15 to Buy")
                                .bold()
                                .padding()
                                .foregroundColor(self.boxColor)
                                .background(self.textColor)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.leading, 6)
                        Divider()
                        Button {
                            nav = true
                        } label: {
                            Text("Trade Here")
                                .bold()
                                .padding()
                                .foregroundColor(self.boxColor)
                                .background(self.textColor)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        //.buttonStyle(.borderedProminent)
                        
                        
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 5)
                    Divider()
                    HStack(alignment: .top) {
                        Text("Funko Pop! Captain America - Avengers Endgame \nFigure #573")
                            .font(.title)
                            .bold()
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                    }
                    HStack {
                        Text("Condition: New")
                            .padding(1)
                            
                            .background(.gray).opacity(0.7)
                            .font(.footnote)
                            .padding(.leading)
                        Spacer()
                    }
                    VStack(alignment: .leading) {
                        //Creates swipable interface for images
                        TabView(selection: $currentIndex) {
                            ForEach(0..<numberOfImages) { num in
                                ZStack(alignment: .bottomLeading) {
                                    Image("FunkoX-\(num + 21)")
                                        .resizable()
                                        .scaledToFit()
                                        .tag(num)
                                        .overlay(Color.gray.opacity(0.05))
                                }
                            }
                        }
                        
                        
                        .tabViewStyle(PageTabViewStyle())
                        .frame(height: 200)
                    }
                    .background(Color.gray.opacity(0.05))
                    ProductDetailsView()
                    ScrollView(.horizontal) { //ScrollView(3)
                        LazyHStack(alignment: .top, spacing: 10) {
                            HStack(spacing: 15) {
                                ForEach((24...31).reversed(), id: \.self) { count in
                                    VStack{
                                        NavigationLink(destination: Text("Works?"), isActive: $nav4, label: { EmptyView() })
                                        Button {
                                            nav4 = true
                                        } label: {
                                            Image("FunkoX-\(count)")
                                                .resizable()
                                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                        }
                                        .frame(width: 135, height: 130)
                                        VStack {
                                            Text(name[count-24]) //Name
                                            Text("Retail: $\(retail[count-24])") //Trading
                                            Text("Lowest: $\(lowest[count-24])") //
                                            Text("\(available[count-24]) available for trade/sell")
                                        }
                                        .multilineTextAlignment(.center)
                                        .frame(width: 120, height: 130)
                                            .truncationMode(.tail)
                                        
                                        
                                        
                                    }
                                    .padding()
                                    .background(Color.gray.opacity(0.05))
                                    .border(.gray, width: 0.5)
                                    
                                }
                            }
                            .padding(.leading)
                            //.frame(width: 1500, height: 135, alignment: .leading)
                        }
                    } //ENDS (3)
                    .scrollIndicators(.hidden)
                    
                }
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: { navigate = true}) {
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
                .toolbarBackground(.visible, for: .navigationBar)
                .padding(.bottom, 10)
                
            }
        }
        .navigationBarHidden(false)
    }
}

struct CaptainAmericaView_Previews: PreviewProvider {
    static var previews: some View {
        CaptainAmericaView()
    }
}

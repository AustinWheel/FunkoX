//
//  HomeView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/4/22.
//

import SwiftUI

struct HomeView: View {
    private let numberOfImages = 5
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    var body: some View {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    VStack {
                        TabView(selection: $currentIndex) {
                            ForEach(0..<numberOfImages) { num in
                                Image("0")
                                    .resizable()
                                    .scaledToFill()
                                    .overlay(Color.black.opacity(0.1))
                                    .tag(num)
                            }
                            
                        }.tabViewStyle(PageTabViewStyle())
                            .padding(.bottom, 20)
                            .frame(width: proxy.size.width, height: proxy.size.height/3, alignment: .center)
                            .onReceive(timer, perform: { _ in
                                withAnimation {
                                    currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
                                }
                            })
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
                                    ForEach(1...6, id: \.self) { _ in
                                        Button {
                                            //NEED TO ADD NAV LINK HERE
                                        } label: {
                                            Image("0")
                                            
                                        }
                                    }
                                }//
                                .padding(.leading)
                            }
                            
                        } //ENDS (1)
                        .scrollIndicators(.hidden)
                        HStack{
                            Text("Recommended For You")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                                .bold()
                                .font(.title3)
                        }
                        ScrollView(.horizontal) { //ScrollView(2)
                            LazyHStack(alignment: .top, spacing: 10) {
                                HStack(spacing: 15) {
                                    ForEach(1...6, id: \.self) { _ in
                                        Button {
                                            //NEED TO ADD NAV LINK HERE
                                        } label: {
                                            Image("0")
                                            
                                        }
                                    }
                                }//
                                .padding(.leading)
                            }
                            
                        } //ENDS (2)
                        .scrollIndicators(.hidden)
                        HStack{
                            Text("Trending Pops")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                                .bold()
                                .font(.title3)
                        }
                        ScrollView(.horizontal) { //ScrollView(3)
                            LazyHStack(alignment: .top, spacing: 10) {
                                HStack(spacing: 15) {
                                    ForEach(1...6, id: \.self) { _ in
                                        Button {
                                            //NEED TO ADD NAV LINK HERE
                                        } label: {
                                            Image("0")
                                            
                                        }
                                    }
                                }//
                                .padding(.leading)
                            }
                            
                        } //ENDS (3)
                        .scrollIndicators(.hidden)
                    }//ENDS homepage VStack
                } //ENDS VScroll View
                .scrollIndicators(.hidden)
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

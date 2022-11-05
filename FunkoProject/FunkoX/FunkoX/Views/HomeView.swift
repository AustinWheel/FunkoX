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
            TabView(selection: $currentIndex) {
                ForEach(0..<numberOfImages) { num in
                    Image("0")
                        .resizable()
                        .scaledToFit()
                        .overlay(Color.black.opacity(0.1))
                        .tag(num)
                }
            }.tabViewStyle(PageTabViewStyle())
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(.bottom)
                .frame(width: proxy.size.width, height: proxy.size.height/3)
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
                    }
                })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  TradeView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/6/22.
//

import SwiftUI

struct TradeView: View {
    private let retail = [12, 25, 13, 26, 12, 12, 13, 12]
    private let lowest = [14, 50, 13, 45, 77, 20, 11, 7]
    private let available = [12, 1, 6, 7, 2, 11, 5, 10]
    private let name = ["Iron Man - Avengers", "Loki - Avengers Endgame", "Scarlet Witch - Wanda Vision", "Thanos - Avengers Endgame", "Spiderman - No Way Home", "Thor - Love and Thunder", "Hulk - Marvel", "Hawkeye - Hawkeye"]
    @State private var nav5 = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Text("Choose a Trader")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .bold()
                            .font(.title)
                    }
                    .padding(.bottom, 5)
                    Trader1()
                    Trader2()
                    Trader3()
                    Trader4()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}

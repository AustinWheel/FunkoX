//
//  Trader1.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/6/22.
//

import SwiftUI

struct Trader1: View {
    private let retail = [12, 25, 13, 26, 12, 12, 13, 12]
    private let lowest = [14, 50, 13, 45, 77, 20, 11, 7]
    private let available = [12, 1, 6, 7, 2, 11, 5, 10]
    private let name = ["Iron Man - Avengers", "Loki - Avengers Endgame", "Scarlet Witch - Wanda Vision", "Thanos - Avengers Endgame", "Spiderman - No Way Home", "Thor - Love and Thunder", "Hulk - Marvel", "Hawkeye - Hawkeye"]
    @State private var nav5 = false
    var body: some View {
        
        HStack{
            Text("Trader - FunkyFunko123")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .bold()
                .font(.headline)
        }
        HStack{
            Text("Currently asking for: ")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .font(.subheadline)
        }
        ScrollView(.horizontal) { //ScrollView(3)
            LazyHStack(alignment: .top, spacing: 10) {
                HStack(spacing: 15) {
                    ForEach((24...27).reversed(), id: \.self) { count in
                        VStack{
                            NavigationLink(destination: MessageView(name: "FunkyFunko123"), isActive: $nav5, label: { EmptyView() })
                            Button {
                                nav5 = true
                            } label: {
                                Image("FunkoX-\(count)")
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                            .frame(width: 135, height: 130)
                            VStack {
                                Text(name[count-24]) //Name
                            }
                            .multilineTextAlignment(.center)
                            .frame(width: 120, height: 50)
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
}

struct Trader1_Previews: PreviewProvider {
    static var previews: some View {
        Trader1()
    }
}

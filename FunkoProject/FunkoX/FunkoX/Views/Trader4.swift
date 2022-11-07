//
//  Trader4.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/6/22.
//

import SwiftUI

struct Trader4: View {
    private let name = ["Stitch - Lilo and Stitch", "Megumi - Ju Jutsu Kaisen", "Hello Kitty - Hello Kitty", "Boba Fett - StarWars", "Winnie the Poo - Winnie the Poo", "Batman - The Batman", "Captain America - Avengers", "Vegeta(With Apron) - Dragon Ball Super", "Samurai Brook - One Peice", "Black Star - Soul Eater"]
    @State private var nav6 = false
    var body: some View {
        HStack{
            Text("Trader - SortedLobster17")
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
                    ForEach((13...16), id: \.self) { count in
                        VStack{
                            NavigationLink(destination: MessageView(name: "SortedLobster17"), isActive: $nav6, label: { EmptyView() })
                            Button {
                                nav6 = true
                            } label: {
                                Image("FunkoX-\(count)")
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                            }
                                .frame(width: 135, height: 130)
                            VStack {
                                Text(name[count-9]) //Name
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

struct Trader4_Previews: PreviewProvider {
    static var previews: some View {
        Trader4()
    }
}

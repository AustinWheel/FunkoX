//
//  ProductDetailsView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/6/22.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Product Details")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .bold()
                    .font(.title3)
            }
            VStack{
                HStack{
                    Text("Pop Box No.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Text("573")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                        .bold()
                }
                HStack{
                    Text("Retail Price")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Text("$17")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                        .bold()
                }
                HStack{
                    Text("Exclusive")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Text("No")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                        .bold()
                }
                HStack{
                    Text("Release")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Text("2019")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                        .bold()
                }
            }
            .padding(.top)
            .padding(.bottom)
            .background(Color.gray.opacity(0.05))
            HStack{
                Text("Related Products")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                    .bold()
                    .font(.title3)
            }
        }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}

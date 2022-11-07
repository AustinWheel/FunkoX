//
//  Testing.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/5/22.
//

import SwiftUI

struct Testing: View {
    @State var images:[String] = ["FunkoX-1", "FunkoX-2"]
    var body: some View {
        NavigationView {
            Form {
                Section {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum:100))]){
                        ForEach(0..<images.count){ num in
                                    Image(images[num])
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
            }
        }
    }
}

struct ImageCellView: View {
    var image: String
    @State private var isActive = false
    var body: some View {
        Image(uiImage: UIImage(systemName: image)!)
             .resizable()
             .scaledToFit()
            .onTapGesture {
                self.isActive = true
            }
        .background(
             NavigationLink (
                  destination: Example(),
                  label: {
                    EmptyView()
                  }
             ))
    }
}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}

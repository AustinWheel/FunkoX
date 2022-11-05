//
//  ContentView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/4/22.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color.init(red: 255, green: 0, blue: 0)
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                    .foregroundColor(mainColor)
                
            }
            Spacer()
            .padding()
        }
        .background(.white) 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

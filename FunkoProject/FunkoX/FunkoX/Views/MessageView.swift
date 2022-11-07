//
//  MessageView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/6/22.
//

import SwiftUI

struct MessageView: View {
    private let box = Color(red: 61/255, green: 65/255, blue: 66/255)
    private var size = 12.0
    private var name: String
    init(name: String) {
        self.name = name
    }
    var body: some View {
        NavigationView {
            //ScrollView(.vertical) {
            
                VStack {
                    HStack{
                        Image(systemName: "at")
                        Text(self.name)
                        Spacer()
                        Image(systemName: "phone")
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top, size)
                            .padding(.bottom, size)
                            .background(self.box)
                            .foregroundColor(Color.white.opacity(0.65))
                            .clipShape(Circle())
                        Image(systemName: "mappin.and.ellipse")
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top, size)
                            .padding(.bottom, size)
                            .background(self.box)
                            .foregroundColor(Color.white.opacity(0.65))
                            .clipShape(Circle())
                        Image(systemName: "gearshape")
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top, size)
                            .padding(.bottom, size)
                            .background(self.box)
                            .foregroundColor(Color.white.opacity(0.65))
                            .clipShape(Circle())
                        
                    }
                    .padding(.trailing)
                    .padding(.leading)
                    .foregroundColor(self.box)
                    .bold()
                    Divider()
                        .frame(height: 1)
                        .overlay(self.box)
                    Spacer()
                    Divider()
                        .frame(height: 1)
                        .overlay(self.box)
                    
                        
                    HStack{
                        Image(systemName: "paperplane")
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top, size)
                            .padding(.bottom, size)
                            .background(self.box)
                            .foregroundColor(Color.white.opacity(0.65))
                            .clipShape(Circle())
                        Image(systemName: "camera")
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top, size)
                            .padding(.bottom, size)
                            .background(self.box)
                            .foregroundColor(Color.white.opacity(0.65))
                            .clipShape(Circle())
                        Spacer()
                        Text("Message \(self.name)")
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.top, size)
                            .padding(.bottom, size)
                            .background(self.box)
                            .foregroundColor(Color.white.opacity(0.65))
                            .clipShape(Capsule())
                            
                        
                            
                            
                    }
                    .padding(.top, 10)
                    .padding(.trailing)
                    .padding(.leading)
                    
                }
            
                .background(.gray)
            
            //}
        }
        .navigationBarHidden(true)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(name: "Bob")
    }
}

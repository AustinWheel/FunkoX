//
//  TopNavBarView.swift
//  FunkoX
//
//  Created by Austin Wheeler on 11/6/22.
//

import SwiftUI

struct TopNavBarView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    HStack {
                        
                    }
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {}) {
                                Image(systemName: "bell.fill")
                                    .padding(.horizontal)
                            }
                        }
                        ToolbarItem(placement: .navigation) {
                                Image("FunkoXLogo")
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(height: 50)
                                .padding(.leading, 5)
                                .padding(.bottom, 3)
                                
                           
                            
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {}) {
                                Image(systemName: "bookmark")
                                    .padding(.horizontal)
                            }
                            
                        }
                       
                    }
                    Divider()
                        
                        
                    
                }
            }
        }
    }
}

struct TopNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavBarView()
    }
}

//
//  ExploreView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.aquablue, .greenblue]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            VStack {
                SearchBar(text: $searchText)
                    .padding()
                
                ScrollView {
                    LazyVStack {
                        ForEach(0 ... 25, id: \.self) { _ in
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 375, height: 50)
                                
                                NavigationLink {
                                    FeedView()
                                } label: {
                                    HashtagRowView()
                                }
                                    
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

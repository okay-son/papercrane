//
//  SwiftUIView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewWishView = false
    var body: some View {
        
        VStack(spacing: -90) {
            GradientView()
                .ignoresSafeArea()
            
            ZStack(alignment: .topTrailing) {
                Color.grayblue
                    .ignoresSafeArea()
                    .cornerRadius(30)
                
                ScrollView {
                    LazyVStack {
                        HStack {
                            Spacer()
                            Image("plant")
                            Spacer()
                        }
                        .padding(.top, 10)
                        
                        ForEach(0 ... 20, id: \.self) { _ in
                            ZStack {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 370, height: 130)
                                    .shadow(radius: 1)
                                
                                WishRowView()
                                    .padding()
                                    
                            }
                        }
                    }
                }
                .padding(.top, 15)
                
                HStack {
                    Spacer()
                    Button {
                        showNewWishView.toggle()
                    } label: {
                        Image("wish")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75, height: 75)
                            .padding()
                            .fullScreenCover(isPresented: $showNewWishView) {
                                NewWishView()
                            }
                    }
                    Spacer()
                }
                .offset(x: 0, y: -50)
            }
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

extension Color {
    static let grayblue = Color("grayblue")
}

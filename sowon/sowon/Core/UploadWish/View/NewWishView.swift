//
//  NewWishView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct NewWishView: View {
    @State private var caption = ""
    @State private var hashtags = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.aquablue, .greenblue]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button{
                        presentationMode.wrappedValue.dismiss()
                        
                    }
                    label:{
                        Text("Cancel")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    }
                    Spacer()
                
                    Button{ print("wish") }
                    label:{
                        Text("Make a wish!")
                            .bold()
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(Color.aquablue)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                        
                    }
                }
                .padding()
                
                HStack(alignment: .top) {
                    TextArea("What is your wish?", text: $caption)
                }
                .padding()
                .frame(height: 250)
                
                HStack(alignment: .top) {
                    TextArea("Hashtags...", text: $hashtags)
                }
                .padding()
                .frame(height: 250)
                
                Spacer()
                
            }
        }
        
    }
}

struct NewWishView_Previews: PreviewProvider {
    static var previews: some View {
        NewWishView()
    }
}


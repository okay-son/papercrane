//
//  AuthHeaderView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.aquablue, .greenblue]), startPoint: .bottom, endPoint: .top)
                .frame(height: 300)
            VStack(alignment: .leading){
                HStack { Spacer() }
                Text(title1)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(title2)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                }
                .frame(height: 260)
                .padding(.leading)
                //.background(Color.aquablue)
            .foregroundColor(.white)
        }
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Hello", title2: "Welcome back")
    }
}

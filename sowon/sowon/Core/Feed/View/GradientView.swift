//
//  GradientView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.aquablue, .greenblue]), startPoint: .bottom, endPoint: .top)
                .frame(height: 200)
            
            Text("PAPER CRANE")
                .font(Font.custom("Abel-Regular", size: 50))
                .foregroundColor(.white)
                .padding(.bottom, 30)
        }

    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
            .previewLayout(.sizeThatFits)
    }
}

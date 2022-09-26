//
//  HashtagRowView.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct HashtagRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "number")
            
            VStack(alignment: .leading) {
                Text("love")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("100 wishes")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct HashtagRowView_Previews: PreviewProvider {
    static var previews: some View {
        HashtagRowView()
    }
}

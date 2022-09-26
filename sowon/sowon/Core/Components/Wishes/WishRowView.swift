//
//  WishRow.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import SwiftUI

struct WishRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // profile pic + user info + wish
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.greenblue)
                
                // user info & wish caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack {
                        Text("Anonymous")
                            .font(.subheadline).bold()
                        
                        Text("@anonymous")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    // wish caption
                    Text("I wish to play guitar")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // action buttons
            HStack {
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "paperplane")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
//            Divider()
//                .background(Color.gray)
                
        }
    }
}

struct WishRowView_Previews: PreviewProvider {
    static var previews: some View {
        WishRowView()
    }
}



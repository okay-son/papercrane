//
//  WishFilterViewModel.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/14/22.
//

import Foundation

enum WishFilterViewModel: Int, CaseIterable {
    case wishes
    case comments
    case likes
    
    var title: String {
        switch self {
        case .wishes: return "Wishes"
        case .comments: return "Comments"
        case .likes: return "Likes"
        }
    }
}

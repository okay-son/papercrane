//
//  sowonApp.swift
//  sowon
//
//  Created by Sonia Soyeon Lee on 5/13/22.
//

import SwiftUI
import Firebase

@main
struct sowonApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}

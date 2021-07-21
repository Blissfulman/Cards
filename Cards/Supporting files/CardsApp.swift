//
//  CardsApp.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

@main
struct CardsApp: App {
    
    // MARK: - Properties
    
    @StateObject var router = TabBarRouter()
    
    // MARK: - Views
    
    var body: some Scene {
        WindowGroup {
            TabBarController(router: router)
        }
    }
}

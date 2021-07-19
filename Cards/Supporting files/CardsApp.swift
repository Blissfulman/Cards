//
//  CardsApp.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

@main
struct CardsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Главная")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Профиль")
                    }
            }
        }
    }
}

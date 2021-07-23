//
//  TabBarController.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 20.07.2021.
//

import SwiftUI

struct TabBarController: View {
    
    // MARK: - Properties
    
    @StateObject var router: TabBarRouter
    
    // MARK: - Views
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                switch router.currentPage {
                case .main:
                    NavigationView {
                        MainView()
                    }
                case .plus:
                    EmptyView()
                case .profile:
                    Palette.dirtyWhite
                }
                
                TabBarView(router: router, width: geometry.size.width, height: 85)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

// MARK: - Previews

struct TabBar_Previews: PreviewProvider {
    
    static var previews: some View {
        TabBarController(router: TabBarRouter())
            .preferredColorScheme(.light)
    }
}

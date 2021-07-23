//
//  TabBarRouter.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 20.07.2021.
//

import SwiftUI

final class TabBarRouter: ObservableObject {
    
    // MARK: - Nested types
    
    enum TabBarPage {
        case main
        case plus
        case profile
    }
    
    // MARK: - Properties
    
    @Published var currentPage: TabBarPage = .main
}

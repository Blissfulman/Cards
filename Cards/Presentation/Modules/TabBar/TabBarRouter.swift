//
//  TabBarRouter.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 20.07.2021.
//

import SwiftUI

class TabBarRouter: ObservableObject {
    
    @Published var currentPage: TabBarPage = .main
}

enum TabBarPage {
    case main
    case plus
    case profile
}

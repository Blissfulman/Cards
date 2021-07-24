//
//  MainScreenView.swift
//  Cards
//
//  Created by Marat Khanbekov on 23.07.2021.
//

import SwiftUI
import Combine

// MARK: - ViewModel

extension MainScreenView {
    class ViewModel: ObservableObject {
        
        @Published var blocks = [Block]()
        
        init() {
            fetchBlocks()
        }
        
        func fetchBlocks() {
            self.blocks = Block.mockData()
        }
        
    }
}

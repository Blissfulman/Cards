//
//  MainView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Properties
    
    let blocks: [Block] = Block.mockData()
    
    // MARK: - Views
    
    var body: some View {
        ScrollView {
            WeekProgressView()
            
            ForEach(blocks) { block in
                BlockView(block: block)
            }
        }
        .navigationBarTitle("Главная", displayMode: .inline)
    }
}

// MARK: - Previews

struct MainView_Previews: PreviewProvider {
    
    static var previews: some View {
        MainView()
    }
}

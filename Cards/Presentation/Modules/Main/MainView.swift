//
//  MainView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

struct MainView: View {
    
    let blocks: [Block] = Block.mockData()
    
    var body: some View {
        ScrollView {
            WeekProgressView()
                        
            ForEach(blocks) { block in
                BlockView(block: block)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

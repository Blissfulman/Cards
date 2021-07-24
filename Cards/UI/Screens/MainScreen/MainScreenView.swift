//
//  MainScreenView.swift
//  Cards
//
//  Created by Marat Khanbekov on 23.07.2021.
//

import SwiftUI
import Combine

struct MainScreenView: View {
    
    // MARK: - Properties
    @StateObject var router: TabBarRouter
    @ObservedObject private(set) var viewModel: ViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                
                WeekProgressView()
                
                ForEach(viewModel.blocks) { block in
                    BlockView(block: block)
                }
                .onAppear {
                    viewModel.fetchBlocks()
                }
                
                TabBarView(router: router)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen(router: TabBarRouter(), viewModel: DashboardScreen.ViewModel())
    }
}

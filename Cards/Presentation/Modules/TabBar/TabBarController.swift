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

struct TabBarView: View {
    
    // MARK: - Properties
    
    @StateObject var router: TabBarRouter
    
    let width: CGFloat
    let height: CGFloat
    
    // MARK: - Views
    
    var body: some View {
        ZStack {
            Color.white
                .padding(.horizontal, -30)
                .shadow(color: .black.opacity(0.1), radius: 28, x: 0, y: 0)
            
            HStack {
                TabBarIcon(
                    router: router,
                    assignedPage: .main,
                    iconImage: Icons.tabBarHome
                )
                
                CentralButton()
                
                TabBarIcon(
                    router: router,
                    assignedPage: .profile,
                    iconImage: Icons.tabBarProfile
                )
            }
        }
        .frame(width: width, height: height)
    }
}

struct TabBarIcon: View {
    
    // MARK: - Properties
    
    @StateObject var router: TabBarRouter
    
    let assignedPage: TabBarPage
    let iconImage: Image
    
    private let iconSize: CGFloat = 28
    
    // MARK: - Views
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                iconImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: iconSize, height: iconSize, alignment: .center)
                
                Spacer()
            }
            
            Spacer()
        }
        .onTapGesture {
            router.currentPage = assignedPage
        }
    }
}

struct CentralButton: View {
    
    // MARK: - Properties
    
    @State private var scaleRatio: CGFloat = 1
    
    // MARK: - Views
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.white)
                .frame(width: 90 * scaleRatio, height: 90 * scaleRatio)
            
            Circle()
                .foregroundColor(Palette.sand)
                .frame(width: 84 * scaleRatio, height: 84 * scaleRatio)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 6)
                        .foregroundColor(.white.opacity(0.7))
                )
            
            Icons.tabBarPlus
        }
        .offset(y: -32)
        .onTapGesture {
            print("Tap") // TEMP
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

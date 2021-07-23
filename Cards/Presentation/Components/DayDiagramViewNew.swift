//
//  DayDiagramViewNew.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 20.07.2021.
//

import SwiftUI

struct DayDiagramViewNew: View {
    
    // MARK: - Properties
    
    let isMarked: Bool
    
    // MARK: - Views
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(isMarked ? Palette.sand : Palette.dirtyWhite)
                .overlay(Circle().stroke(Palette.lightGray, lineWidth: 1))
                .frame(width: 30, height: 30)
            
            if isMarked {
                Icons.checkmark
            }
        }
    }
}

// MARK: - Previews

struct DayDiagramViewNew_Previews: PreviewProvider {
    
    static var previews: some View {
        DayDiagramViewNew(isMarked: true)
    }
}

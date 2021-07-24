//
//  DayDiagramView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 20.07.2021.
//

import SwiftUI

struct DayDiagramView: View {
    
    // MARK: - Properties
    
    let isMarked: Bool
    let weekdayIndex: Int
    
    private var weekdayText: String {
        let russianWeekDayIndex = (weekdayIndex == 7) ? 0 : weekdayIndex
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru-RU")
        return dateFormatter.shortStandaloneWeekdaySymbols[russianWeekDayIndex].capitalized
    }
    
    // MARK: - Views
    
    var body: some View {
        VStack(spacing: 5) {
            Text(weekdayText)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            ZStack {
                Circle()
                    .foregroundColor(isMarked ? Palette.purple : Palette.dirtyWhite)
                    .overlay(Circle().stroke(Palette.shadowGrey, lineWidth: 0.5))
                    .frame(width: 35, height: 35)
                
                if isMarked {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

// MARK: - Previews

struct DayDiagramView_Previews: PreviewProvider {
    
    static var previews: some View {
        DayDiagramView(isMarked: true, weekdayIndex: 3)
    }
}

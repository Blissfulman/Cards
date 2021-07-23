//
//  WeekProgressViewNew.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

struct WeekProgressViewNew: View {
    
    // MARK: - Properties
    
    let weekData: [Bool] = [false, true, false, false, true, false, false]
    
    private var markedDaysCount: Int {
        weekData.filter { $0 == true }.count
    }
    
    // MARK: - Views
    
    var body: some View {
        VStack {
            Text("\(markedDaysCount) days of activity")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 12))
            
            weekView
        }
        .padding(.horizontal, 30)
    }
    
    var weekView: some View {
        ZStack {
            Rectangle()
                .frame(height: 1)
                .overlay(
                    Rectangle()
                        .stroke(style: StrokeStyle(lineWidth: 1))
                        .foregroundColor(Palette.lightGray)
                )
                .padding(.horizontal, 20)
            
            HStack {
                ForEach(weekData, id: \.self) {
                    DayDiagramViewNew(isMarked: $0)
                        .padding(8)
                }
            }
        }
    }
}

// MARK: - Previews

struct WeekProgressViewNew_Previews: PreviewProvider {
    
    static var previews: some View {
        WeekProgressViewNew()
    }
}

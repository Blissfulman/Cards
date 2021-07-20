//
//  WeekProgressView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

struct WeekProgressView: View {
    
    // MARK: - Properties
    
    let weekData: [Int: Bool] = [1: false, 2: true, 3: false, 4: true, 5: false, 6: true, 7: true]
    
    var days: [Int] {
        weekData.keys.map { $0 }.sorted()
    }
    
    // MARK: - Views
    
    var body: some View {
        VStack {
            weekView
                .padding(.bottom, 15)
            
            Divider()
            
            Text("4 активных дня обучения")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                .font(.system(size: 18))
        }
        .padding(30)
    }
    
    var weekView: some View {
        ZStack {
            Rectangle()
                .frame(height: 0.5)
                .overlay(
                    Rectangle()
                        .stroke(style: StrokeStyle(lineWidth: 0.5))
                        .foregroundColor(ColorSet.shadowGrey)
                )
                .padding()
                .offset(x: 0, y: 12.5)
            
            HStack {
                ForEach(days, id: \.self) {
                    DayDiagramView(isMarked: weekData[$0] ?? false, weekdayIndex: $0)
                        .padding(4)
                }
            }
        }
    }
}

// MARK: - Previews

struct WeekProgressView_Previews: PreviewProvider {
    
    static var previews: some View {
        WeekProgressView()
    }
}

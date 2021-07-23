//
//  NewMainView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 24.07.2021.
//

import SwiftUI

struct NewMainView: View {
    
    // MARK: - Properties
    
    let courses = Course.mockData()
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    // MARK: - Views
    
    var body: some View {
        ScrollView {
            VStack {
                WeekProgressViewNew()
                
                LazyVGrid(columns: columns, spacing: 17) {
                    ForEach(courses, id: \.self) { course in
                        FolderView(
                            size: (UIScreen.main.bounds.width - 60) / 2,
                            title: course.title,
                            cardsCount: course.cardsCount,
                            markText: course.mark
                        )
                    }
                }
                .padding(20)
            }
        }
        .navigationBarTitle("Dashboard")
    }
}

// MARK: - Previews

struct NewMain_Previews: PreviewProvider {
    
    static var previews: some View {
        NewMainView()
    }
}

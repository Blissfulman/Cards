//
//  Course.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 24.07.2021.
//

import Foundation

struct Course: Hashable {
    let title: String
    let cardsCount: Int
    let mark: String
}

extension Course {
    
    static func mockData() -> [Course] {
        [
            Course(title: "History of accient Greece", cardsCount: 10, mark: "Repeat today"),
            Course(title: "Geography. Countries", cardsCount: 12, mark: "Repeat today"),
            Course(title: "History of accient Rome", cardsCount: 21, mark: "Repeat tomorrow"),
            Course(title: "History of Russian Impire", cardsCount: 14, mark: "Repeat today"),
            Course(title: "History of Apple", cardsCount: 15, mark: "Repeat tomorrow")
        ]
    }
}

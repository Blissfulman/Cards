//
//  Block.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import Foundation

struct Block: Identifiable {
    let id: Int
    let title: String
    let totalCards: Int
    let needRepeat: Int
}

extension Block {
    
    static func mockData() -> [Block] {
        [
            Block(id: 1, title: "История древней Греции. Хронология событий. Термины.", totalCards: 67, needRepeat: 10),
            Block(id: 2, title: "История древней России. Хронология событий. Олигархия.", totalCards: 67, needRepeat: 24),
            Block(id: 3, title: "Страны мира. География.", totalCards: 67, needRepeat: 51)
        ]
    }
}

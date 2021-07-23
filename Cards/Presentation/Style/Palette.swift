//
//  Palette.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

enum Palette {
    static let sand = Color("sand")
    
    static let shadowGrey = Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
    static let purple = Color(#colorLiteral(red: 0.5562907554, green: 0.5643569458, blue: 0.9011715221, alpha: 1))
    static let dirtyWhite = Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1))
    static let lightGray = Color(#colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1))
    
    // FolderView
    static let greenFolder = Color(#colorLiteral(red: 0.8078431373, green: 0.9058823529, blue: 0.8509803922, alpha: 1))
    static let darkGreenFolder = Color(#colorLiteral(red: 0.662745098, green: 0.8274509804, blue: 0.7647058824, alpha: 1))
    static let garkGray = Color(#colorLiteral(red: 0.3137254902, green: 0.3137254902, blue: 0.3137254902, alpha: 1))
    
}

extension Palette {
    
    static func blockColorSet() -> Set<Color> {
        [Color(#colorLiteral(red: 0.8979325891, green: 0.4552379251, blue: 0.4382321239, alpha: 1)), Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), Color(#colorLiteral(red: 0.7550658131, green: 0.6493019379, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), Color(#colorLiteral(red: 0.7550658131, green: 0.6493019379, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]
    }
}

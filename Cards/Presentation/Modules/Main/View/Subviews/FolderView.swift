//
//  FolderView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 23.07.2021.
//

import SwiftUI

struct FolderView: View {
    
    // MARK: - Properties
    
    let size: CGFloat
    let title: String
    let cardsCount: Int
    let markText: String
    
    // MARK: - Views
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
                Folder(width: geometry.size.width, height: geometry.size.height, cornerRadius: 10)
                
                Text(title)
                    .fontWeight(.heavy)
                    .font(Font.system(size: 16))
                    .padding(EdgeInsets(top: 33, leading: 10, bottom: 50, trailing: 10))
                
                VStack(alignment: .trailing){
                    Text("\(cardsCount)")
                        .font(Font.system(size: 28))
                    
                    Text(markText)
                        .font(Font.system(size: 12))
                }
                .foregroundColor(Palette.garkGray)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 8))
            }
        }
        .frame(width: size, height: size)
    }
}

private struct Folder: View {
    
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Palette.darkGreenFolder)
                .frame(width: width, height: height / 2)
                .offset(y: 2 - width / 4)
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color.white)
                .frame(width: width - 5, height: height / 2)
                .offset(y: 10 - height / 4)
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: cornerRadius))
                path.addQuadCurve(
                    to: CGPoint(x: cornerRadius, y: 0),
                    control: CGPoint(x: 0, y: 0)
                )
                path.addLine(to: CGPoint(x: -cornerRadius + width / 2, y: 0))
                path.addCurve(
                    to: CGPoint(x: cornerRadius + width / 2, y: 15),
                    control1: CGPoint(x: width / 2, y: 2),
                    control2: CGPoint(x: width / 2, y: 13)
                )
                path.addLine(to: CGPoint(x: width - cornerRadius, y: 15))
                path.addQuadCurve(
                    to: CGPoint(x: width, y: 15 + cornerRadius),
                    control: CGPoint(x: width, y: 15)
                )
                path.addLine(to: CGPoint(x: width, y: height - cornerRadius))
                path.addQuadCurve(
                    to: CGPoint(x: width - cornerRadius, y: height),
                    control: CGPoint(x: width, y: height)
                )
                path.addLine(to: CGPoint(x: cornerRadius, y: height))
                path.addQuadCurve(
                    to: CGPoint(x: 0, y: height - cornerRadius),
                    control: CGPoint(x: 0, y: height)
                )
            }
            .fill(Palette.greenFolder)
        }
    }
}

// MARK: - Previews

struct FolderView_Previews: PreviewProvider {
    
    static var previews: some View {
        FolderView(
            size: 160,
            title: "Geography. Countries",
            cardsCount: 10,
            markText: "Repeat today"
        )
    }
}

//
//  BlockView.swift
//  Cards
//
//  Created by Evgeny Novgorodov on 19.07.2021.
//

import SwiftUI

struct BlockView: View {
    
    // MARK: - Properties
    
    let block: Block
    
    // MARK: - Views
    
    var body: some View {
        HStack {
            leftView
                .frame(width: UIScreen.main.bounds.width * 0.48)
                .padding(15)
                .background(Color.white)
            
            rightView
                .background(ColorSet.blockColorSet().randomElement())
        }
        .cornerRadius(20)
        .shadow(color: ColorSet.shadowGrey, radius: 10, x: 0, y: 5)
        .frame(width: UIScreen.main.bounds.width - 50, height: 150)
        .padding(12)
    }
    
    var leftView: some View {
        VStack {
            Text(block.title)
                .bold()
                .font(.system(size: 18))
                .frame(maxWidth: .infinity, alignment: .leading)
                .lineLimit(3)
                .padding(10)
            
            Spacer()
            
            Text("Total cards \(block.totalCards)")
                .foregroundColor(.gray)
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
        }
    }
    
    var rightView: some View {
        VStack {
            Text("Повторить сегодня")
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10))
            
            HStack {
                Spacer()
                
                Text("\(block.needRepeat)")
                    .bold()
                    .font(.system(size: 50))
                    .padding(.trailing, 8)
            }
            
            Spacer()
        }
    }
}


struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(block: Block.mockData().last!)
    }
}

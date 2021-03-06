//
//  GridlayoutDog.swift
//  00657041-HW2
//
//  Created by User04 on 2020/4/15.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct GridlayoutDog: View {
    let names = [["dog0","dog1"],["dog2","dog3"],["dog4","dog5"],["dog6","dog7"]]
    var columncount = 4
    let photoWidth = (UIScreen.main.bounds.size.width-10)/2
    var body: some View {
        List{
            ForEach(names.indices){(row) in
                HStack(spacing:10){
                    ForEach(self.names[row].indices){(column) in
                        Image(self.names[row][column])
                            .resizable()
                            .scaledToFill()
                            .frame(width:self.photoWidth,height:self.photoWidth)
                            .clipped()
                            .border(LinearGradient(gradient: Gradient(colors: [Color("Head"),Color("Mid"),Color("Dark"), Color("Light")]), startPoint: .leading, endPoint: .trailing), width: 7)
                    }
                }
            }.listRowInsets(EdgeInsets(top:0, leading:0, bottom:10, trailing:0))
        }.onAppear{UITableView.appearance().separatorColor = .clear}
    }
}

struct GridlayoutDog_Previews: PreviewProvider {
    static var previews: some View {
        GridlayoutDog()
    }
}

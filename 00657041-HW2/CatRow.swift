//
//  DogRow.swift
//  00657041-HW2
//
//  Created by User04 on 2020/4/13.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct CatRow:View{
    let cat:Cat
    var body :some View{
        HStack{
            Image(cat.name)
                .resizable()
                .scaledToFill()
                .frame(width:80,height: 80)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color("Head"),Color("Mid"),Color("Dark"), Color("Light")]), startPoint: .leading, endPoint: .trailing), lineWidth: 4))
                
                
                .shadow(radius: 10)
            Text("#")
            .font(Font.system(size: 15))
               .foregroundColor(.white)
            .frame(width: 20, height: 20)
            .background(LinearGradient(gradient: Gradient(colors: [Color("Head"),Color("Mid"),Color("Dark"), Color("Light")]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Circle())
            .offset(x: -30, y: 26)
            VStack(alignment:.leading){
                Text(cat.name)
                Text(cat.type)
            }
            Spacer()
        }
    }
}

struct CatRow_Previews : PreviewProvider
{
    static var previews : some View
    {
        CatRow(cat:Cat(name:"狗勾",type:"大中小",information:"俺是愛貓人士"))
            .previewLayout(.fixed(width:300, height:70))
    }
}

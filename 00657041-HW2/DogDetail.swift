//
//  DogDetail.swift
//  00657041-HW2
//
//  Created by User04 on 2020/4/13.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct DogDetail: View {
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    @State private var rotateDegree: Double = 0
    @State private var show = false
    let dog:Dog
    var body: some View {
        VStack {
            Button (action:{self.rotateDegree = 360}){
                Text(dog.name)
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color("BF"))
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color("GF"), lineWidth: 5)
                )
            }

                Image(dog.name)
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(height:300)
                    .clipped()
                    .rotationEffect(.degrees(rotateDegree))
                    .animation(
                        Animation.linear(duration:5)
                           .repeatCount(1, autoreverses: false)
                    )
            VStack{
                    if show{
                        Text(dog.information)
                            .transition(.slide)
                            .padding()
                    }
                }
                .animation(.easeInOut(duration:3))
                .onAppear{self.show = true}
        }
        .navigationBarTitle(dog.name)
        .background(Image("back"))
    }
}


struct DogDetail_Previews: PreviewProvider {
    static var previews: some View {
        DogDetail(dog:Bigdogs[0])
    }
}

//
//  ContentView.swift
//  00657041-HW2
//
//  Created by User04 on 2020/4/13.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    @State private var rotateDegree: Double = 0
    var body: some View {
        
        VStack {
                    Button("轉吧，Peter") {
                        self.rotateDegree = 360
                    }
                    .font(.title)
                    Image("cat0")
                        .rotationEffect(.degrees(rotateDegree))
                        .animation(
                            Animation.linear(duration:5)
                               .repeatCount(3, autoreverses: false)
                        )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

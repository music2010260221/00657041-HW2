//
//  AppView.swift
//  00657041-HW2
//
//  Created by User04 on 2020/4/13.
//  Copyright © 2020 110. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        TabView{
            DogList()
                .tabItem {
                    Image(systemName:"house.fill")
                    Text("狗勾")
                    .foregroundColor(.blue)
            }
            CatList()
                .tabItem{
                    Image(systemName:"house.fill")
                    Text("貓咪")
                    .foregroundColor(.red)
                    
            }
        }
        .accentColor(.purple)

    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

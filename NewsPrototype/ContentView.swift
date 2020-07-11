//
//  ContentView.swift
//  NewsPrototype
//
//  Created by Gerardo Maldonado on 7/11/20.
//  Copyright © 2020 Gerardo Maldonado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Categories()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "globe")
                        Text("Categories")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Categories.swift
//  NewsPrototype
//
//  Created by Gerardo Maldonado on 7/11/20.
//  Copyright © 2020 Gerardo Maldonado. All rights reserved.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        CategoryCard()
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryCard: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("business")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            Text("Business")    .font(.headline)
                .foregroundColor(Color.white)
                .padding(12) // Add padding
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous)) // Add clip shape to the whole ZStack
    }
}

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
        GeometryReader { geometry in // Add GeometryReader
            ScrollView {
                VStack { // Like HStack, but positions views vertically
                    CategoryRow(geometry: geometry)
                    CategoryRow(geometry: geometry)
                    CategoryRow(geometry: geometry)
                    CategoryRow(geometry: geometry)
                }
                .padding()
            }
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryCard: View {
        let geometry: GeometryProxy // Add geometry parameter to CategoryCard
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("business")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame( width: geometry.size.width * 0.45, // Set width and height to a fraction of view width
                height: geometry.size.height * 0.25)
            Text("Business")    .font(.headline)
                .foregroundColor(Color.white)
                .padding(12) // Add padding
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous)) // Add clip shape to the whole ZStack
    }
}

struct CategoryRow: View {
    let geometry: GeometryProxy
    var body: some View {
        HStack { // Like ZStack, but positions views horizontally
            CategoryCard(geometry: geometry)
            CategoryCard(geometry: geometry)
        }
    }
}



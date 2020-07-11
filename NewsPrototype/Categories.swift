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
        NavigationView { // Add NavigationView
            GeometryReader { geometry in // Add GeometryReader
                ScrollView {
                    VStack { // Like HStack, but positions views vertically
                        CategoryRow(geometry: geometry, categoryNameLeft: "Business", categoryNameRight: "Science")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Sports", categoryNameRight: "Opinion")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Finance", categoryNameRight: "Politics")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Health", categoryNameRight: "Arts")
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Categories") // Set the navigation bar title
            .navigationBarHidden(true) // Hide the navigation bar title
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CategoryCard: View {
        let geometry: GeometryProxy
        let categoryName: String
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(categoryName.lowercased())
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame( width: geometry.size.width * 0.45, // Set width and height to a fraction of view width
                height: geometry.size.height * 0.25)
            Text(categoryName)
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(12) // Add padding
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous)) // Add clip shape to the whole ZStack
    }
}

struct CategoryRow: View {
    let geometry: GeometryProxy
    let categoryNameLeft: String
    let categoryNameRight: String
    
    var body: some View {
        HStack { // Like ZStack, but positions views horizontally
            NavigationLink(destination: Category(categoryName: categoryNameLeft)) {
                CategoryCard(geometry: geometry, categoryName: categoryNameLeft)
            }
            NavigationLink(destination: Category(categoryName: categoryNameRight)) {
                CategoryCard(geometry: geometry, categoryName: categoryNameRight)
            }
        }
        .buttonStyle(PlainButtonStyle()) // Change button style of navigation links
    }
}

struct Category: View {
    let categoryName: String
    
    var body: some View {
        VStack {
            Text("")
        }
        .navigationBarTitle(categoryName) // Use the category name
    }
}



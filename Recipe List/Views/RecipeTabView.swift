//
//  RecipeTabView.swift
//  Recipe List
//
//  Created by Jim Linehan on 2/24/23.
//

import SwiftUI

struct RecipeTabView: View {
    @State var tagIndex = 0
    var body: some View {

        TabView (selection: $tagIndex) {
                 
                 Text("Feature View")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Featured")
                }.tag(0)
            RecipeListView()
                .tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                    Text("Recipes")
                }
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

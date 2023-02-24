//
//  RecipeDetalView.swift
//  Recipe List
//
//  Created by Jim Linehan on 2/19/23.
//

import SwiftUI

struct RecipeDetalView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            VStack (alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)               
                ForEach(recipe.ingredients, id: \.self) { i in
                    Text("•  " + i)
                        .padding(1.0)
                }
                Text("Directions").font(.headline).padding(.top)
                ForEach(0..<recipe.directions.count, id: \.self)
                { d in
                    Text(String(d+1) + ". " + recipe.directions[d])
                        .padding(.bottom, 1.0)
                }.padding(.horizontal)
            }.padding(.horizontal)
        }.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetalView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetalView(recipe: model.recipes[0])
    }
}

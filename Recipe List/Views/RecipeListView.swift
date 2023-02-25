//
//  ContentView.swift
//  Recipe List
//
//  Created by Jim Linehan on 2/16/23.
//

import SwiftUI

struct RecipeListView: View {
    
   
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {

        NavigationView {
            List(model.recipes) { r in
                NavigationLink (
                    destination:RecipeDetalView(recipe:r),
                    label: {
                    HStack (spacing: 20){
                        Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50,
                               height:  50,
                               alignment: .center).clipped().cornerRadius(10)
                        Text(r.name)
                    }
                })
            }.navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}

//
//  RecipeModel.swift
//  Recipe List
//
//  Created by Jim Linehan on 2/16/23.
//

import Foundation

class RecipeModel: ObservableObject {
    
  @Published var recipes = [Recipe]()
    
    
    init() {
        

        self.recipes = DataService.getLocalData()
        
        
    }
}

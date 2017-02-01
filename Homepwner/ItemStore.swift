//
//  ItemStore.swift
//  Homepwner
//
//  Created by Erik Uecke on 2/1/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
}

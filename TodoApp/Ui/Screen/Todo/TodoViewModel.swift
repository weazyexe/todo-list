//
//  TodoViewModel.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import Foundation

class TodoViewModel: ObservableObject {
    
    @Published
    private(set) var items: [TodoItem] = []
    
    func loadItems() {
        items = [
            TodoItem(title: "Learn SwiftUI", description: "Run Xcode and heckin learn it dude", completed: false),
            TodoItem(title: "Buy smth", description: "Today", completed: false),
            TodoItem(title: "Push the project to GitHub", description: nil, completed: true)
        ]
    }
    
    func onItemClick(item: TodoItem) {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else {
            return
        }
        
        let newItem = items[index]
        items[index] = TodoItem(
            title: newItem.title,
            description: newItem.description,
            completed: !newItem.completed
        )
    }
    
    func addItem(item: TodoItem) {
        items.append(item)
    }
}

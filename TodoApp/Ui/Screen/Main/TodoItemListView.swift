//
//  TodoItemListView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct TodoItemListView: View {
    
    var items: [TodoItem]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(items) { todoItem in
                TodoItemView(todoItem: todoItem)
            }
            Spacer()
        }
    }
}

struct TodoItemListView_Previews: PreviewProvider {
    
    static var previews: some View {
        let todoItems: [TodoItem] = [
            TodoItem(title: "Learn SwiftUI", description: "Run Xcode and heckin learn it dude", completed: false),
            TodoItem(title: "Buy smth", description: "Today", completed: false),
            TodoItem(title: "Push the project to GitHub", description: nil, completed: true)
        ]
        
        TodoItemListView(items: todoItems)
            .padding()
    }
}

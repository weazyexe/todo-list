//
//  TodoItemListView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct TodoItemListView: View {
    
    var items: [TodoItem]
    
    var onItemClick: (_:TodoItem) -> Void
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                ForEach(items) { item in
                    TodoItemView(
                        item: item,
                        onItemClick: onItemClick
                    )
                }
                Spacer()
            }
            .padding()
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
        
        TodoItemListView(
            items: todoItems,
            onItemClick: {_ in}
        )
    }
}

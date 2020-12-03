//
//  TodoItemView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct TodoItemView: View {
    
    var item: TodoItem
    
    var onItemClick: (_:TodoItem) -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                onItemClick(item)
            }) {
                CheckView(isChecked: item.completed)
                VStack(alignment: .leading) {
                    Text(item.title)
                        .foregroundColor(.black)
                    if let description = item.description {
                        Text(description)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                }
                Spacer()
            }
        }
    }
}

struct TodoItemView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView(
            item: TodoItem(
                title: "Title",
                description: "Subtitle",
                completed: true
            ),
            onItemClick: {_ in}
        )
    }
}

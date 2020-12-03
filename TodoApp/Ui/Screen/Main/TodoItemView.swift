//
//  TodoItemView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct TodoItemView: View {
    var todoItem: TodoItem
    var body: some View {
        HStack {
            CheckView(isChecked: todoItem.completed)
            VStack(alignment: .leading) {
                Text(todoItem.title)
                if let description = todoItem.description {
                    Text(description)
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
            }
            Spacer()
        }
    }
}

struct TodoItemView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView(
            todoItem: TodoItem(
                title: "Title",
                description: "Subtitle",
                completed: true
            )
        )
    }
}

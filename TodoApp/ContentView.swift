//
//  ContentView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CoreView()
                .navigationBarTitle("ToDo List", displayMode: .inline)
                .navigationBarItems(
                    trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                    })
                )
        }
    }
}

struct CoreView: View {
    var todoItems = [
        TodoItem(title: "Learn SwiftUI", description: "Run Xcode and heckin learn it dude", completed: false),
        TodoItem(title: "Buy a milk", description: "Today", completed: false),
        TodoItem(title: "Push the project to GitHub", description: nil, completed: true)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(todoItems) { todoItem in
                TodoItemView(todoItem: todoItem)
            }
            Spacer()
        }
        .padding()
    }
}

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
        }
    }
}

struct CheckView: View {
    var isChecked: Bool
    var body: some View {
        let icon = isChecked ? "checkmark.circle.fill" : "circle"
        Image(systemName: icon)
            .resizable()
            .frame(width: 20, height: 20)
            .accentColor(.blue)
            .padding(.trailing, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

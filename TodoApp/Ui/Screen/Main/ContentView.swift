//
//  ContentView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    let todoItems: [TodoItem] = [
        TodoItem(title: "Learn SwiftUI", description: "Run Xcode and heckin learn it dude", completed: false),
        TodoItem(title: "Buy smth", description: "Today", completed: false),
        TodoItem(title: "Push the project to GitHub", description: nil, completed: true)
    ]
    
    var body: some View {
        NavigationView {
            TodoItemListView(items: todoItems)
                .padding()
                .navigationBarTitle("Todo List", displayMode: .inline)
                .navigationBarItems(
                    trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.blue)
                    })
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

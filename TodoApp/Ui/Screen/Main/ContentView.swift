//
//  ContentView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = TodoViewModel()
    
    var body: some View {
        NavigationView {
            TodoItemListView(
                items: viewModel.items,
                onItemClick: viewModel.onItemClick
            )
            .navigationBarTitle("Todo List", displayMode: .inline)
            .navigationBarItems(
                trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.blue)
                })
            )
        }
        .onAppear(perform: onAppear)
    }
    
    private func onAppear() {
        viewModel.loadItems()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

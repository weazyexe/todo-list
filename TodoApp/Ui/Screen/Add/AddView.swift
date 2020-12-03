//
//  AddView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode)
    private var presentationMode: Binding<PresentationMode>
    
    var onAddClick: (_: TodoItem) -> Void
    
    var body: some View {
        Button("Add empty item", action: {
            onAddClick(
                TodoItem(title: "Empty item", description: "Description", completed: false)
            )
            presentationMode.wrappedValue.dismiss()
        })
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(onAddClick: {_ in})
    }
}

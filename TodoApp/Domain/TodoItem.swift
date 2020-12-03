//
//  TodoItem.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String?
    let completed: Bool
}

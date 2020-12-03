//
//  CheckView.swift
//  TodoApp
//
//  Created by Timur Zadvornov on 03.12.2020.
//

import SwiftUI

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

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView(isChecked: true)
        CheckView(isChecked: false)
    }
}

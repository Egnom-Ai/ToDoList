//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Gustavo Monge on 9/19/24.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
    "Build Apps",
    "Take a Vacation",
    "Change the World",
    "Bring the Awesome"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }

                    
                }
                
                
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}

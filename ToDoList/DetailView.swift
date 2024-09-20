//
//  DetailView.swift
//  ToDoList
//
//  Created by Gustavo Monge on 9/19/24.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String // Don't initialize it - It will be passed from the parent view
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text("You Are a Swifty Legend!\nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
//        .navigationBarBackButtonHidden()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}

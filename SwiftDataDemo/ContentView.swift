//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by vignesh kumar c on 26/10/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            Text("Click to add item")
            Button("Add an item") {
                addItem()
            }
            .foregroundColor(.black)
            
            List {
                ForEach(items) { item in
                    
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.counterclockwise.icloud.fill")
                        }
                    }
                    
                }
                .onDelete { indexes in
                    
                    for index in indexes {
                        removeItem(items[index])
                    }
                }
            }

        }
        .background(Color.purple)
        .cornerRadius(10)
        .padding()
    }
    
    func addItem() {
        let item = DataItem(name: "Eh thook theen")
        context.insert(item)
    }
    
    func removeItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem) {
        item.name = "Name Change agiruchu"
        try? context.save()
    }
}

#Preview {
    ContentView()
}

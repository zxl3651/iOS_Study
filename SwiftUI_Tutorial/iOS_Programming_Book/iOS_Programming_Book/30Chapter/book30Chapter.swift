//
//  book30Chapter.swift
//  iOS_Programming_Book
//
//  Created by 이성현 on 2023/12/22.
//

import SwiftUI



struct book30Chapter : View {
    @State private var toggleStatus = true
    @State var listData : [ToDoItem] = [
        ToDoItem(task: "Take out trash", imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
    ]
    var body: some View {
        NavigationStack{
            List{
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus){
                        Text("Allow Notifications")
                    }
                    
                    NavigationLink(value: listData.count) {
                        Text("View Task Count")
                    }
                }
                
                Section(header: Text("To Do Tasks")) {
                    ForEach(listData) { item in
                        NavigationLink(value: item.task) {
                            HStack{
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .navigationTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
            .navigationBarItems(trailing: Button(action: addTask, label: {
                Text("Add")
            }))
            .navigationDestination(for: String.self) { task in
                Text("Selected task = \(task)")
            }
            .navigationDestination(for: Int.self) { count in
                Text("Number of tasks = \(count)")
            }
        }
    }
    func addTask() {
        
    }
    
    func deleteItem(at offsets: IndexSet) {
        
    }
    
    func moveItem(from source: IndexSet, to destination: Int){
        
    }
}


struct ToDoItem : Identifiable {
    var id = UUID()
    var task : String
    var imageName: String
}

#Preview {
    book30Chapter()
}

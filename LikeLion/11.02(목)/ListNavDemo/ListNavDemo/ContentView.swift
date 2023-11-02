//
//  ContentView.swift
//  ListNavDemo
//
//  Created by 이성현 on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var carStore : CarStore = CarStore(cars: carData)
    @State private var stackPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            List {
                ForEach(0..<carStore.cars.count, id: \.self) { i in
                    NavigationLink(value: i){
                        ListCell(car: carStore.cars[i])
                    }
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationDestination(for: Int.self) { i in
                CarDetail(selectedCar: carStore.cars[i])
            }
            .navigationDestination(for: String.self) { _ in
                AddNewCar(carStore: self.carStore, path: $stackPath)
            }
            .navigationTitle(Text("Ev Cars"))
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink(value: "Add Car") {
                        Text("Add")
                    }
                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    EditButton()
                }
            }
        }
        
    }
    func deleteItems(at offsets: IndexSet) {
        carStore.cars.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    ContentView()
}

struct ListCell: View {
    
    var car : Car
    
    var body: some View {
        
        HStack{
            Image(car.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text(car.name)
        }
    }
}

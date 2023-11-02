//
//  CarStore.swift
//  ListNavDemo
//
//  Created by 이성현 on 2023/11/02.
//

import Foundation

class CarStore : ObservableObject {
    
    @Published var cars : [Car]
    
    init(cars: [Car]) {
        self.cars = cars
    }
}

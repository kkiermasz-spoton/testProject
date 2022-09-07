//
//  ViewData.swift
//  testGui
//
//  Created by Jakub Szymczak on 07/09/2022.
//

import Foundation

struct ViewData: Equatable {
    var exampleData: String

    init(exampleData: String) {
        self.exampleData = exampleData
    }

    mutating func setexampleData(string: String) {
        self.exampleData = string
    }
}

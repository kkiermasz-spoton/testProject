//
//  ViewModel.swift
//  testGui
//
//  Created by Jakub Szymczak on 07/09/2022.
//

import Foundation

class ViewModel: ObservableObject {

    @Published private(set) var viewData: ViewData

    init() {
        viewData = ViewData(exampleData: "hadupsz")
    }

    func setViewDataContent(input: String) {
        self.viewData.exampleData = input
    }

    func getViewDataContent() -> String {
        viewData.exampleData
    }
}

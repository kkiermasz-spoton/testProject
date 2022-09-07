//
//  ContentView.swift
//  testGui
//
//  Created by Jakub Szymczak on 25/08/2022.
//

import Foundation
import SwiftUI

struct EditView: View {

    @ObservedObject private var viewModel: ViewModel

    init() {
        viewModel = ViewModel()
    }

    var body: some View {
        VStack {
            EditContactInformation(viewModelGet: viewModel.getViewDataContent, viewModelSet: viewModel.setViewDataContent)
                .background(Color.white)
                .cornerRadius(4)
                .padding(8)
        }
        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}

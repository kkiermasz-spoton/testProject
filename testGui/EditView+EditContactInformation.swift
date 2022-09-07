//
//  File.swift
//  testGui
//
//  Created by Jakub Szymczak on 25/08/2022.
//

import Foundation
import SwiftUI

extension EditView {
    struct EditContactInformation: View {

        // MARK: - Properties

        private let viewModelGet: () -> String
        private let viewModelSet: (String) -> Void

        // MARK: - Initialization

        init(viewModelGet: @escaping () -> String, viewModelSet: @escaping (String) -> Void) {
            self.viewModelGet = viewModelGet
            self.viewModelSet = viewModelSet
        }

        // MARK: - View

        var body: some View {
            VStack {
                AttributedInput(attributeName: "experimantal input", attributeValue: Binding(get: { viewModelGet() },
                                                                                             set: { viewModelSet($0) }))
                Button {
                    print(viewModelGet())
                } label: {
                    Text("check button")
                }
            }
            .padding(16)

        }
    }

}

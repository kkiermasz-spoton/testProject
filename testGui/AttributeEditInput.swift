//
//  AttributeEditInput.swift
//  testGui
//
//  Created by Jakub Szymczak on 25/08/2022.
//

import Foundation
import SwiftUI

struct AttributedInput: View {

    // MARK: - Properties

    let attributeName: String
    @Binding var attributeValue: String

    // MARK: - View

    var body: some View {
        VStack {
            Text(attributeName)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField(attributeValue, text: $attributeValue)
                .border(.blue)
        }
    }
}

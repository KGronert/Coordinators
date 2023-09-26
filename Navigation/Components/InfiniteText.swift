//
//  View+Extension.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct InfiniteText: View {
    let title: String
    let didTap: () -> Void

    var body: some View {
        let color = Color.random

        Text(title)
            .contrastedForeground(backgroundColor: color)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
            .font(.title)
            .onTapGesture { didTap() }
    }
}

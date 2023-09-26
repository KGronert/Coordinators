//
//  TabBarItemView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct TabBarItemView: View {
    let type: TabBarItemType

    var body: some View {
        Image(systemName: type.icomName)
    }
}

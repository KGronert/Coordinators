//
//  NavigationApp.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

@main
struct NavigationApp: App {
    @StateObject private var coordinator: MainCoordinator = MainCoordinator()

    var body: some Scene {
        WindowGroup {
            ZStack {
                MainCoordinatorView(coordinator: coordinator)
            }
        }
    }
}

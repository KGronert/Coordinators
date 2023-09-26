//
//  HomeCoordinatorView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct HomeCoordinatorView: View {
    @StateObject var coordinator: HomeCoordinator

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ZStack {
                HomeView(viewModel: HomeViewModel(coordinator: coordinator))
            }
            .navigationDestination(for: HomeCoordinator.Route.self) { route in
                switch route {
                case .someView: SomeHomeView(viewModel: SomeHomeViewModel(coordinator: coordinator))
                case .someOtherView: SomeOtherHomeView(viewModel: SomeOtherHomeViewModel(coordinator: coordinator))
                }
            }
        }
    }
}

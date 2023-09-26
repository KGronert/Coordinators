//
//  ListCoordinatorView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct ListCoordinatorView: View {
    @StateObject var coordinator: ListCoordinator

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ZStack {
                ListView(viewModel: ListViewModel(coordinator: coordinator))
            }
            .navigationDestination(for: ListCoordinator.Route.self) { route in
                switch route {
                case .someView: SomeListView(viewModel: SomeListViewModel(coordinator: coordinator))
                case .someOtherView: SomeOtherListView(viewModel: SomeOtherListViewModel(coordinator: coordinator))
                }
            }
        }
    }
}

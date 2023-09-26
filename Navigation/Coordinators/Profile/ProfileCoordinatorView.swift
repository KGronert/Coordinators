//
//  ProfileCoordinatorView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct ProfileCoordinatorView: View {
    @StateObject var coordinator: ProfileCoordinator

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ZStack {
                ProfileView(viewModel: ProfileViewModel(coordinator: coordinator))
            }
            .navigationDestination(for: ProfileCoordinator.Route.self) { route in
                switch route {
                case .someView: SomeProfileView(viewModel: SomeProfileViewModel(coordinator: coordinator))
                case .someOtherView: SomeOtherProfileView(viewModel: SomeOtherProfileViewModel(coordinator: coordinator))
                }
            }
        }
    }
}

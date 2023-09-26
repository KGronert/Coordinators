//
//  ProfileView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel: ProfileViewModel

    var body: some View {
        InfiniteText(
            title: "\(ProfileView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class ProfileViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(ProfileView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(ProfileView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.push(ProfileCoordinator.Route.someView)
    }
}

//
//  HomeView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        InfiniteText(
            title: "\(HomeView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class HomeViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(HomeView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(HomeView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.push(HomeCoordinator.Route.someView)
    }
}

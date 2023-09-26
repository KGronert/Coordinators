//
//  SomeHomeView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct SomeHomeView: View {
    @StateObject var viewModel: SomeHomeViewModel

    var body: some View {
        InfiniteText(
            title: "\(SomeHomeView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeHomeViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(SomeHomeView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(SomeHomeView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.push(HomeCoordinator.Route.someOtherView)
    }
}

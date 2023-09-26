//
//  SomeProfileView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct SomeProfileView: View {
    @StateObject var viewModel: SomeProfileViewModel

    var body: some View {
        InfiniteText(
            title: "\(SomeProfileView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeProfileViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(SomeProfileView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(SomeProfileView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.push(ProfileCoordinator.Route.someOtherView)
    }
}

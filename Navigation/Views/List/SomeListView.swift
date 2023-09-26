//
//  SomeListView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct SomeListView: View {
    @StateObject var viewModel: SomeListViewModel

    var body: some View {
        InfiniteText(
            title: "\(SomeListView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeListViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(SomeListView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(SomeListView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.push(ListCoordinator.Route.someOtherView)
    }
}

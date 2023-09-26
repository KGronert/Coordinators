//
//  SomeOtherListView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct SomeOtherListView: View {
    @StateObject var viewModel: SomeOtherListViewModel

    var body: some View {
        InfiniteText(
            title: "\(SomeOtherListView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeOtherListViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(SomeOtherListView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(SomeOtherListView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.handle(.someOtherHomeView)
    }
}

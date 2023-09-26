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
            title: "Some Other List View",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeOtherListViewModel: ObservableObject {
    private weak var coordinator: ListCoordinator?

    init(coordinator: ListCoordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "SomeOtherListView onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "SomeOtherListView onDisappear")
    }

    func didTapTitle() {
        coordinator?.popToRoot()
    }
}

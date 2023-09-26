//
//  SomeOtherView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct SomeOtherHomeView: View {
    @StateObject var viewModel: SomeOtherHomeViewModel

    var body: some View {
        InfiniteText(
            title: "\(SomeOtherHomeView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeOtherHomeViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(SomeOtherHomeView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(SomeOtherHomeView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.popToRoot()
    }
}

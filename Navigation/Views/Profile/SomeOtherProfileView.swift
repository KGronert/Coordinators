//
//  SomeOtherProfileView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct SomeOtherProfileView: View {
    @StateObject var viewModel: SomeOtherProfileViewModel

    var body: some View {
        InfiniteText(
            title: "\(SomeOtherProfileView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class SomeOtherProfileViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(SomeOtherProfileView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(SomeOtherProfileView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.change(.home)
    }
}

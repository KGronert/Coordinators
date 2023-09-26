//
//  ListView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewModel: ListViewModel
    
    var body: some View {
        InfiniteText(
            title: "\(ListView.self)",
            didTap: { viewModel.didTapTitle() }
        )
        .onAppear { viewModel.onAppear() }
        .onDisappear { viewModel.onDisappear() }
    }
}

@MainActor
final class ListViewModel: ObservableObject {
    private weak var coordinator: Coordinator?

    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }

    func onAppear() {
        PrettyLogger.log(message: "\(ListView.self) onAppear")
    }

    func onDisappear() {
        PrettyLogger.log(message: "\(ListView.self) onDisappear")
    }

    func didTapTitle() {
        coordinator?.push(ListCoordinator.Route.someView)
    }
}

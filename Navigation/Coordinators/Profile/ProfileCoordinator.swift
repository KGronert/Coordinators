//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

@MainActor
final class ProfileCoordinator: ObservableObject, Coordinator {
    @Published var path = NavigationPath()

    private weak var parent: MainCoordinator?

    init(parent: MainCoordinator) {
        self.parent = parent
    }

    func push(_ route: any RouteType) {
        path.append(route)
    }

    func popToRoot() {
        path = .init()
    }

    func change(_ tab: TabBarItemType) {
        parent?.selectedTab = tab
    }

    func handle(_ deeplink: Deeplink) {
        parent?.handle(deeplink)
    }
}

extension ProfileCoordinator {
    enum Route: RouteType {
        case someView
        case someOtherView
    }
}

//
//  MainCoordinator.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

@MainActor
final class MainCoordinator: ObservableObject {
    @Published var selectedTab: TabBarItemType = .initial
    @Published var home: HomeCoordinator!
    @Published var list: ListCoordinator!
    @Published var profile: ProfileCoordinator!

    init() {
        self.home = .init(parent: self)
        self.list = .init(parent: self)
        self.profile = .init(parent: self)
    }

    func handle(_ deeplink: Deeplink) {
        switch deeplink {
        case .someOtherHomeView:
            selectedTab = .home
            home.path = NavigationPath([HomeCoordinator.Route.someView, HomeCoordinator.Route.someOtherView])
        }
    }
}

enum Deeplink {
    case someOtherHomeView
}

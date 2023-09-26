//
//  MainCoordinatorView.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

import SwiftUI

struct MainCoordinatorView: View {
    @StateObject var coordinator: MainCoordinator

    var body: some View {
        NavigationView {
            Group {
                TabView(selection: $coordinator.selectedTab) {
                    Group {
                        HomeCoordinatorView(coordinator: coordinator.home)
                            .tabItem { TabBarItemView(type: .home) }
                            .tag(TabBarItemType.home)

                        ListCoordinatorView(coordinator: coordinator.list)
                            .tabItem { TabBarItemView(type: .list) }
                            .tag(TabBarItemType.list)

                        ProfileCoordinatorView(coordinator: coordinator.profile)
                            .tabItem { TabBarItemView(type: .profile) }
                            .tag(TabBarItemType.profile)
                    }
                }
            }
        }
    }
}

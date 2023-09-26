//
//  Coordinator.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

@MainActor
protocol Coordinator: AnyObject {
    func push(_ route: any RouteType)
    func popToRoot()
    func change(_ tab: TabBarItemType)
    func handle(_ deeplink: Deeplink)
}

protocol RouteType: Hashable { }

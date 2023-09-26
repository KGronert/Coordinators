//
//  Tab.swift
//  Navigation
//
//  Created by Kamil Gronert on 26/09/2023.
//

enum TabBarItemType {
    case home
    case list
    case profile

    var icomName: String {
        switch self {
        case .home: return "pencil.slash"
        case .list: return "eraser"
        case .profile: return "folder"
        }
    }
}

extension TabBarItemType {
    static var initial = TabBarItemType.home
}

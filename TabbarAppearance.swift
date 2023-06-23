//
//  TabbarAppearance.swift
//  SwiftUIBootCamp
//
//  Created by Everything Apple on 23/06/2023.
//

import SwiftUI


struct TabbarAppearance: ViewModifier {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray

        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.white

        let itemAppearance = UITabBarItemAppearance()
        itemAppearance.normal.iconColor = UIColor.gray
        appearance.stackedLayoutAppearance = itemAppearance

        UITabBar.appearance().standardAppearance = appearance
    }

    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func tabBarAppearance() -> some View {
        self.modifier(TabbarAppearance())
    }
}

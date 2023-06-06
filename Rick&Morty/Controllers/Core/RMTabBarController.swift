//
//  ViewController.swift
//  Rick&Morty
//
//  Created by Renat on 05.06.2023.
//

import UIKit
/// Controller to house tabs and route tab controllers
final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        view.backgroundColor = .white
    }
    
    private func setupTabs() {
        modalTransitionStyle = .flipHorizontal
        
    
        
        let navBar1 = UINavigationController(rootViewController: RMCharacterViewController())
        let navBar2 = UINavigationController(rootViewController: RMLocationViewController())
        let navBar3 = UINavigationController(rootViewController: RMEpisodeViewController())
        let navBar4 = UINavigationController(rootViewController: RMSettingsViewController())
        
        for nav in [navBar1, navBar2, navBar3, navBar4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        navBar1.tabBarItem = UITabBarItem(title: "Characters",
                                          image: UIImage(systemName: "person"),
                                          tag: 1)
        navBar2.tabBarItem = UITabBarItem(title: "Locations",
                                          image: UIImage(systemName: "globe"),
                                          tag: 2)
        navBar3.tabBarItem = UITabBarItem(title: "Episodes",
                                          image: UIImage(systemName: "tv"),
                                          tag: 3)
        navBar4.tabBarItem = UITabBarItem(title: "Settings",
                                          image: UIImage(systemName: "gear"),
                                          tag: 4)

        setViewControllers(
            [navBar1, navBar2, navBar3, navBar4],
            animated: true)
    }


}


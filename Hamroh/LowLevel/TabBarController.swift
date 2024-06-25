//
//  TabBarController.swift
//  Hamroh
//
//  Created by Peter on 19.06.2024.
//

import Foundation
import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowRadius = 12
        tabBar.layer.shadowOpacity = 0.12
        
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
        tabBar.isTranslucent = false
        
        let travelerDriverViewController = UINavigationController(rootViewController: TravelerDriverViewController())
        let myDrivesViewController = UINavigationController(rootViewController: MyDrivesViewController())
        let messagesViewController = UINavigationController(rootViewController: MessagesViewController())
        let profileViewController = UINavigationController(rootViewController: ProfileViewController())

        travelerDriverViewController.tabBarItem = .init(
            title: "",
            image: UIImage(named: "BarCarInactive"),
            selectedImage: UIImage(named: "BarCarActive")
        )
        
        myDrivesViewController.tabBarItem = .init(
            title: "",
            image: UIImage(named: "BarCardsInactive"),
            selectedImage: UIImage(named: "BarCardsActive")
        )
        
        messagesViewController.tabBarItem = .init(
            title: "",
            image: UIImage(named: "BarChatsInactive"),
            selectedImage: UIImage(named: "BarChatsActive")
        )
        
        profileViewController.tabBarItem = .init(
            title: "",
            image: UIImage(named: "BarProfileInactive"),
            selectedImage: UIImage(named: "BarProfileActive")
        )

        setViewControllers([travelerDriverViewController, myDrivesViewController, messagesViewController, profileViewController], animated: true)
    }
}


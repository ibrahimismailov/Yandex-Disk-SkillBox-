//
//  TabBarVC.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 24.04.2023.
//

import UIKit
import RAMAnimatedTabBarController

class TabBarVC: RAMAnimatedTabBarController {
    let selectedColor = ColorHelper.backgroundColor
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let firstVC = UINavigationController(rootViewController: ProfileVC())
        let secVC = UINavigationController(rootViewController: ProductsVC())
        let thirdVC = UINavigationController(rootViewController: AllVC())
        
        firstVC.view.backgroundColor = .systemBackground
        firstVC.tabBarItem = RAMAnimatedTabBarItem(title: "", image: ImageHelper.profileIcon?.withRenderingMode(.alwaysTemplate), tag: 0)
        (firstVC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipLeftTransitionItemAnimations()
      
        secVC.view.backgroundColor = .systemBackground
        secVC.tabBarItem = RAMAnimatedTabBarItem(title: "", image: ImageHelper.productIcon?.withRenderingMode(.alwaysTemplate), tag: 1)
        (secVC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipLeftTransitionItemAnimations()
        
        thirdVC.view.backgroundColor = .systemBackground
        thirdVC.tabBarItem = RAMAnimatedTabBarItem(title: "", image: ImageHelper.allIcon?.withRenderingMode(.alwaysTemplate), tag: 2)
        (thirdVC.tabBarItem as? RAMAnimatedTabBarItem)?.animation = RAMFlipLeftTransitionItemAnimations()
        
        setViewControllers([firstVC, secVC, thirdVC],animated: false)
    }
    
}

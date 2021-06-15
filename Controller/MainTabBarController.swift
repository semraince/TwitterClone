//
//  MainTabBarController.swift
//  TwitterClone
//
//  Created by semra on 2.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    var actionButton: UIButton = {
        let button = UIButton(type: .system);
        button.tintColor = .white;
        button.backgroundColor = .customTwitterBlue;
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside);
        return button;
    }();

    override func viewDidLoad() {
        super.viewDidLoad()
        configureController();
        configureUI();

        // Do any additional setup after loading the view.
    }
    
    @objc func actionButtonTapped() {
        print(123);
    }
    
    func configureUI(){
        view.addSubview(actionButton);
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor,  bottomSpace: 64, rightSpace: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 28;
    }

    func configureController() {
        let feedNavigationController = createNavigationController(viewController: FeedController.self, imageName:"home_unselected");
        
        let conversationNavigationController = createNavigationController(viewController: ConversationController.self, imageName:"ic_mail_outline_white_2x-1");
        
        let exploreNavigationController = createNavigationController(viewController: ExploreController.self, imageName:"search_unselected");
        
        let notificationsNavigationController = createNavigationController(viewController: NotificationsController.self, imageName:"like_unselected");
        
        viewControllers = [feedNavigationController, exploreNavigationController, notificationsNavigationController, conversationNavigationController];
    }
    
    func createNavigationController(viewController: UIViewController.Type, imageName: String) -> UINavigationController {
        let rootController = viewController.init();
        let navigationController = UINavigationController(rootViewController: rootController);
        navigationController.tabBarItem.image = UIImage(named: imageName);
        navigationController.navigationBar.barTintColor = .white;
        return navigationController;
    }

}

//
//  FeedController.swift
//  TwitterClone
//
//  Created by semra on 2.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

class FeedController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        configureUI();
    }
    
    func configureUI(){
        view.backgroundColor = .white;
        let topImageView = UIImageView(image: UIImage(named: "twitter_logo_blue"));
        topImageView.contentMode = .scaleAspectFit;
        navigationItem.titleView = topImageView;
        
        
    }
    
    
}



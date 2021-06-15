//
//  ConversationController.swift
//  TwitterClone
//
//  Created by semra on 2.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

class ConversationController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI();
    }
    
    func configureUI(){
        view.backgroundColor = .white;
        navigationItem.title = "Conversations";
    }
}

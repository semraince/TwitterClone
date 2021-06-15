//
//  AuthenticationController.swift
//  TwitterClone
//
//  Created by semra on 3.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {
    private let alreadyHaveAnAccount: UIButton = {
        let button = Utilities.attributedButton("Already have an acount? ", "Sign In");
        button.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside);
        return button;
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI();
    
    }
    @objc func handleSignIn(){
        navigationController?.popViewController(animated: true);
    }
    func configureUI(){
        view.backgroundColor = .customTwitterBlue;
        view.addSubview(alreadyHaveAnAccount);
        alreadyHaveAnAccount.anchor(left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor, leftSpace: 16, bottomSpace: 16, rightSpace: 16);
    }
}

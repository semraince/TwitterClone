//
//  LoginController.swift
//  TwitterClone
//
//  Created by semra on 3.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    let logoView: UIImageView = {
        let imageView = UIImageView();
        imageView.image = #imageLiteral(resourceName: "TwitterLogo");
        imageView.clipsToBounds = true;
        imageView.contentMode = .scaleAspectFit;
        return imageView;
    }();
    
    lazy var emailView : UIView = {
        let image: UIImage = #imageLiteral(resourceName: "ic_mail_outline_white_2x-1");
        let view = Utilities.inputWithImageContainerView(image: image, textField: emailTextField);
        return view;
    }()
    
    lazy var passwordView: UIView = {
        let image: UIImage = #imageLiteral(resourceName: "ic_lock_outline_white_2x");
        let view = Utilities.inputWithImageContainerView(image: image, textField: passwordTextField);
        return view;
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = Utilities.textField(withPlaceHolder: "Password");
        textField.isSecureTextEntry = true;
        return textField;
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = Utilities.textField(withPlaceHolder: "Email")
        textField.autocapitalizationType = .none
        return textField;
    }()
    
    let loginButton : UIButton = {
        let button = UIButton(type: .system);
        button.setTitle("Log In", for: .normal);
        button.setTitleColor(UIColor.customTwitterBlue, for: .normal);
        button.backgroundColor = .white
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20);
        button.layer.cornerRadius = 5;
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside);
        return button;
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = Utilities.attributedButton("Dont have an acount? ", "Sign Up");
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside);
        return button;
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        configureUI();
        
    }
    
    @objc func handleLogin(){
        print("Handle login here");
    }
    @objc func handleShowSignUp(){
        let registrationController = RegistrationController();
        navigationController?.pushViewController(registrationController, animated: true);
    }
    func configureUI(){
        view.backgroundColor = .customTwitterBlue;
        navigationController?.navigationBar.isHidden = true;
        navigationController?.navigationBar.barStyle = .black
        view.addSubview(logoView);
        logoView.centerX(relatedView: view, topAxisAnchor: view.safeAreaLayoutGuide.topAnchor);
        logoView.setDimensions(width: 150, height: 150);
        let stackView = UIStackView(arrangedSubviews: [emailView, passwordView, loginButton]);
        stackView.axis = .vertical;
        stackView.distribution = .fillEqually
        stackView.spacing = 10;
        view.addSubview(stackView);
        view.addSubview(dontHaveAccountButton);
        dontHaveAccountButton.anchor(left: view.safeAreaLayoutGuide.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.safeAreaLayoutGuide.rightAnchor, leftSpace: 16, bottomSpace: 16, rightSpace: 16);
        stackView.anchor(top: logoView.bottomAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, leftSpace: 32, rightSpace: 32);
        
    }
}

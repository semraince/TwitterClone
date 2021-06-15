//
//  Utilities.swift
//  TwitterClone
//
//  Created by semra on 5.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

class Utilities {
    
    static func inputWithImageContainerView(image: UIImage, textField: UITextField) -> UIView{
        let view = UIView();
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        let mailImage = UIImageView();
        view.addSubview(mailImage);
        view.addSubview(textField);
        mailImage.image = image
        mailImage.contentMode = .scaleAspectFit;
        mailImage.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,  topSpace: 8, leftSpace: 8, bottomSpace: 8);
        mailImage.setDimensions(width: 24, height: 24)
        textField.anchor(left: mailImage.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topSpace: 8, leftSpace: 8, bottomSpace: 8);
        let dividerView = UIView();
        view.addSubview(dividerView);
        dividerView.backgroundColor = .white
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, leftSpace: 8, height: 0.75)
        return view;
    }
    
    static func textField(withPlaceHolder placeHolder: String) -> UITextField {
        let textField = UITextField();
        textField.textColor = .white;
        textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textField.font = UIFont.systemFont(ofSize: 16);
        return textField;
        
    }
    
    static func attributedButton(_ firstPart: String, _ secondPart: String) -> UIButton {
        let button = UIButton(type: .system);
        let attributedTitle = NSMutableAttributedString(string: firstPart, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.white])
        attributedTitle.append(NSAttributedString(string: secondPart, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.white]));
        button.setAttributedTitle(attributedTitle, for: .normal);
        return button;
    }
}

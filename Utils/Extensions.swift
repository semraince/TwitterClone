//
//  Extensions.swift
//  TwitterClone
//
//  Created by semra on 3.06.2021.
//  Copyright © 2021 semra. All rights reserved.
//

import UIKit

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                topSpace: CGFloat = 0,
                leftSpace: CGFloat = 0,
                bottomSpace: CGFloat = 0,
                rightSpace: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil) {
        translatesAutoresizingMaskIntoConstraints = false;
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: topSpace).isActive = true;
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: leftSpace).isActive = true;
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -bottomSpace).isActive = true;
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -rightSpace).isActive = true;
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true;
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true;
        }
        
    }
    
    func center(relatedView: UIView, yConstant: CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false;
        centerXAnchor.constraint(equalTo: relatedView.centerXAnchor).isActive = true;
        centerYAnchor.constraint(equalTo: relatedView.centerYAnchor, constant: yConstant).isActive = true;
        
    }
    
    func centerX(relatedView: UIView, topAxisAnchor: NSLayoutYAxisAnchor? = nil , ySpace: CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false;
        centerXAnchor.constraint(equalTo: relatedView.centerXAnchor).isActive = true;
        if let yAnchor = topAxisAnchor {
            topAnchor.constraint(equalTo: yAnchor, constant: ySpace).isActive = true;
        }
    }
    
    func centerY(relatedView: UIView, leftAxisAnchor: NSLayoutXAxisAnchor? = nil, xSpace: CGFloat = 0, ySpace: CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false;
        centerYAnchor.constraint(equalTo: relatedView.centerYAnchor, constant: ySpace).isActive = true;
        
        if let xAnchor = leftAxisAnchor {
            leftAnchor.constraint(equalTo: xAnchor, constant: xSpace).isActive = true;
        }
    }
    
    func setDimensions(width: CGFloat, height : CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false;
        widthAnchor.constraint(equalToConstant: width).isActive = true;
        heightAnchor.constraint(equalToConstant: height).isActive = true;
    }
    
}

extension UIColor {
    static let customTwitterBlue = UIColor.rgb(red: 29, green: 161, blue: 242)
     static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1);
    }
    
}

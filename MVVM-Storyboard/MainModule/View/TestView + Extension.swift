//
//  TestView + Extension.swift
//  MVVM-Storyboard
//
//  Created by Ruslan on 15.02.2022.
//

import UIKit

extension TestView {
    
    static var imageConfig = UIImage.SymbolConfiguration(pointSize: 50, weight: .bold, scale: .large)
    
    func createImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        imageView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 2).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        return imageView
    }
    
    func createActivityIndicatorView() -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.color = .gray
        activityIndicatorView.hidesWhenStopped = true
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(activityIndicatorView)
        activityIndicatorView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 5).isActive = true
        activityIndicatorView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        return activityIndicatorView
    }
    
    func createLabel(size: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: size)
        addSubview(label)
        
        return label
    }
    
    func createTitleLabel() -> UILabel {
        let titleLabel = createLabel(size: 20)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.numberOfLines = 0
        titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageView.bottomAnchor, multiplier: 1).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        return titleLabel
    }
    
    func createDescriptionLabel() -> UILabel {
        let descriptionLabel = createLabel(size: 14)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 1).isActive = true
        descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        return descriptionLabel
    }
}

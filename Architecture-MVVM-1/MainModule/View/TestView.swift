//
//  TestView.swift
//  Architecture-MVVM-1
//
//  Created by Ruslan on 15.02.2022.
//

import UIKit

class TestView: UIView {
    
    var viewData: ViewData = .initial {
        didSet {
            setNeedsLayout()
        }
    }
    
    lazy var imageView = createImageView()
    lazy var activityIndicator = createActivityIndicatorView()
    lazy var titleLabel = createTitleLabel()
    lazy var descriptionLabel = createDescriptionLabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        switch viewData {
        case .initial:
            update(viewData: nil, isHidden: true)
            activityIndicatorState(false)
        case .loading(let loading):
            update(viewData: loading, isHidden: false)
            activityIndicatorState(true)
        case .success(let success):
            update(viewData: success, isHidden: false)
            activityIndicatorState(false)
        case .failure(let failure):
            update(viewData: failure, isHidden: false)
            activityIndicatorState(false)
        }
    }
    
    private func update(viewData: ViewData.Data?, isHidden: Bool) {
        imageView.image = nil
        if let icon = viewData?.icon {
            imageView.image = UIImage(systemName: icon, withConfiguration: TestView.imageConfig)
        }
        titleLabel.text = viewData?.title
        descriptionLabel.text = viewData?.description
        imageView.isHidden = isHidden
        titleLabel.isHidden = isHidden
        descriptionLabel.isHidden = isHidden
    }
    
    private func activityIndicatorState(_ isOn: Bool) {
        if isOn {
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
        } else {
            activityIndicator.isHidden = true
            activityIndicator.stopAnimating()
        }
    }
}

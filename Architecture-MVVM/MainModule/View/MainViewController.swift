//
//  MainViewController.swift
//  Architecture-MVVM
//
//  Created by Ruslan on 15.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: MainViewModelProtocol!
    private var testView: TestView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        updateView()
    }
    
    private func setUpView() {
        testView = TestView()
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        view.addSubview(testView)
    }
    
    private func updateView() {
        viewModel.updateViewData = { [weak self] viewData in
            self?.testView.viewData = viewData
        }
    }
    
    @IBAction func startAction(_ sender: UIButton) {
        viewModel.startFetch()
    }
}


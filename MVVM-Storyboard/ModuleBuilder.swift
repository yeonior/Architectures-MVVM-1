//
//  ModuleBuilder.swift
//  MVVM-Storyboard
//
//  Created by Ruslan on 16.02.2022.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

final class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let viewModel = MainViewModel()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "Main") as! MainViewController
        view.viewModel = viewModel
        
        return view
    }
}

//
//  MainViewModel.swift
//  Architecture-MVVM
//
//  Created by Ruslan on 15.02.2022.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> ())? { get set }
    func startFetch()
}

final class MainViewModel: MainViewModelProtocol {
    
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
    public func startFetch() {
        
        // start loading
        updateViewData?(.loading(ViewData.Data(icon: nil,
                                               title: nil,
                                               description: nil,
                                               phoneNumber: nil)))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.updateViewData?(.success(ViewData.Data(icon: "checkmark.diamond",
                                                        title: "success",
                                                        description: "everything is ok",
                                                        phoneNumber: nil)))
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            self.updateViewData?(.success(ViewData.Data(icon: "xmark.diamond",
                                                        title: "failure",
                                                        description: "something went wrong",
                                                        phoneNumber: nil)))
        }
    }
}

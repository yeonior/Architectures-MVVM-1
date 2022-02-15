//
//  ViewData.swift
//  MVVM-Storyboard
//
//  Created by Ruslan on 15.02.2022.
//

import Foundation

enum ViewData {
    case initialize
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let phoneNumber: String?
    }
}

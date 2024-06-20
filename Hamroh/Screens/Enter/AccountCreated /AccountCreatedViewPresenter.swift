//
//  AccountCreatedViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 16.04.2024.
//

import Foundation
import UIKit

protocol AccountCreatedViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class AccountCreatedViewPresenter: AccountCreatedViewProtocol {
    
    func load() {
        // code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .fullScreen)
    }
}

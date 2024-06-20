//
//  RegisterViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 06.12.2023.
//

import Foundation
import UIKit

protocol RegisterViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class RegisterViewPresenter: RegisterViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

//
//  EnterNewPasswordViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 24.04.2024.
//

import Foundation
import UIKit

protocol EnterNewPasswordViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class EnterNewPasswordViewPresenter: EnterNewPasswordViewProtocol {
    
    func load() {
        // code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

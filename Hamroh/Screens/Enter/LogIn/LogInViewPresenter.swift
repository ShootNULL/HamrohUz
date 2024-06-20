//
//  LogInViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 12.04.2024.
//

import Foundation
import UIKit

protocol LogInViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class LogInViewPresenter: LogInViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

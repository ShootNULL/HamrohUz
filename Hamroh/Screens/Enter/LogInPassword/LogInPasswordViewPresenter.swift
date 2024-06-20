//
//  LogInPasswordViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 12.04.2024.
//

import Foundation
import UIKit

protocol LogInPasswordViewProtocol {
    func load() -> Void
    func goNextPush(vc: UIViewController)
    func goNextFullScreen(vc: UIViewController)
}

class LogInPasswordViewPresenter: LogInPasswordViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNextPush(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
    
    func goNextFullScreen(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .fullScreen)
    }
    
}

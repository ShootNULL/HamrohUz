//
//  StartPointViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

protocol StratPointViewProtocol {
    func load() -> Void
}

class StarrPointViewPresenter: StratPointViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

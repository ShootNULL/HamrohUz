//
//  TravelerDriverViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 27.05.2024.
//

import Foundation
import UIKit

protocol TravelerDriverViewProtocol {
    func load() -> Void
}

class TravelerDriverViewPresenter: TravelerDriverViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

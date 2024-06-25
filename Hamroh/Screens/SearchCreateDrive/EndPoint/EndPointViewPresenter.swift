//
//  EndPointViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

protocol EndPointViewProtocol {
    func load() -> Void
}

class EndPointViewPresenter: EndPointViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

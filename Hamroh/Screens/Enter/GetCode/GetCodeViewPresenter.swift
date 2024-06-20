//
//  GteCodeViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 13.04.2024.
//

import Foundation
import UIKit

protocol GetCodeViewProtocol {
    func load() -> Void
    func goNext(vc:UIViewController)
}

class GetCodeViewPresenter: GetCodeViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

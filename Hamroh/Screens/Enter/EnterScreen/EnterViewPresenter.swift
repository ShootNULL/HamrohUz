//
//  EnterViewPresenter.swift
//  Hamroh
//
//  Created by Евгений Парфененков on 04.12.2023.
//

import Foundation
import UIKit

protocol EnterViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class EnterViewPresenter: EnterViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

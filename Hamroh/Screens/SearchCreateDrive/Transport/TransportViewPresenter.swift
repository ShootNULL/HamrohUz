//
//  TransportViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

protocol TransportViewProtocol {
    func load() -> Void
}

class TransportViewPresenter: TransportViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

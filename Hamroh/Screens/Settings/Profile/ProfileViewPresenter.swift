//
//  ProfileViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

protocol ProfileViewProtocol {
    func load() -> Void
}

class ProfileViewPresenter: ProfileViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

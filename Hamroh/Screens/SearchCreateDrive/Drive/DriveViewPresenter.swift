//
//  DriveViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

protocol DriveViewProtocol {
    func load() -> Void
}

class DriveViewPresenter: DriveViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}

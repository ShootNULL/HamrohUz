//
//  Navigation.swift
//  Hamroh
//
//  Created by Евгений Парфененков on 16.05.2024.
//

import Foundation
import UIKit

class Navigation {
    
    func navigateTo(VC: UIViewController, style: styles) {
        
        if style == .push {
            let navigationController = UIApplication.topViewController()?.navigationController
            navigationController?.pushViewController(VC, animated: true)
        }
        
        let presentStyle = {
            if style == .popUp { return UIModalPresentationStyle.popover }
            else { return UIModalPresentationStyle.fullScreen }
        }
        
        if style != .push {
            VC.modalPresentationStyle = presentStyle()
            UIApplication.topViewController()?.present(VC, animated: true)
        }
       
    }
    
    @objc func goBack() {
        let navigationController = UIApplication.topViewController()?.navigationController
        navigationController?.popViewController(animated: true)
    }
    
    enum styles: Int {
        typealias RawValue = Int

        case popUp
        case fullScreen
        case push
    }
}

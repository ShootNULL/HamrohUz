//
//  MessagesViewController.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

class MessagesViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Сообщения") ?? UILabel()
    private let search = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = .white
        
        setUpMainTitle()
        setUpSearch()
    }
    
    private func setUpMainTitle() {
        
        let mainTitleConstraints = [
            
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpSearch() {
        
      
    
    }
    
}


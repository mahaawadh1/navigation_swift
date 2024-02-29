//
//  DetaildViewController.swift
//  navigation
//
//  Created by maha on 29/02/2024.
//

import UIKit
import SnapKit


class DetailsViewController: UIViewController {
    
    var message: String?
    override func viewDidLoad() {
        
        title="secound page"
        view.backgroundColor = .white
        
        super.viewDidLoad()
        let label = UILabel()
        label.text = message
        label.textAlignment = .center
        label.numberOfLines = 0
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.right.equalToSuperview().inset(20)
        }
    }
}

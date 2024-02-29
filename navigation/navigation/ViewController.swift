//
//  ViewController.swift
//  navigation
//
//  Created by maha on 29/02/2024.
//
import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        title="First page"
        view.backgroundColor = .white
        super.viewDidLoad()
        
        button.setTitle("Show Details", for: .normal)
        button.tintColor = .blue
        button.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    @objc func showDetails() {
        let detailsViewController = DetailsViewController()
        detailsViewController.message = "Welcome to Details View!"
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}

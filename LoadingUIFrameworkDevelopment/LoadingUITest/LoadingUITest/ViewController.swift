//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Lambda_School_Loaner_218 on 1/29/20.
//  Copyright © 2020 Lambda_School_Loaner_218. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Push Button in navigation bar to test loading view"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Test", style: .plain, target: self, action: #selector(presentLoadingViewController))
    }
    
    @objc func presentLoadingViewController() {
        let loadingVC = LoadingViewController()
        self.present(loadingVC, animated: true)
    }
    
    private func setupSubViews() {
        view.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            descriptionLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -60)
        ])
    }
}

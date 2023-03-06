//
//  SparrowViewController.swift
//  SparrowButtons
//
//  Created by Никита Курюмов on 06.03.23.
//

import UIKit

class SparrowViewController: UIViewController {
    
    lazy var sparrowLabel: UILabel = {
        var label = UILabel()
        label.text = "I hope you didn't use button life cycle methods"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var sparrowImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "sparrow")
        image.layer.cornerRadius = 20
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Color")
        view.addSubview(sparrowLabel)
        view.addSubview(sparrowImage)
        
        NSLayoutConstraint.activate([
            sparrowLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            sparrowLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sparrowLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sparrowLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        NSLayoutConstraint.activate([
            sparrowImage.topAnchor.constraint(equalTo: sparrowLabel.bottomAnchor, constant: 20),
            sparrowImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2),
            sparrowImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -2)
        ])
    }
}

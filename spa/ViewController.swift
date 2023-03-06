//
//  ViewController.swift
//  spa
//
//  Created by Никита Курюмов on 05.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var firstButton: UIButton = {
        var button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.imagePadding = 8
        configuration.titlePadding = 10
        configuration.contentInsets.top = 14
        configuration.contentInsets.bottom = 14
        configuration.contentInsets.leading = 10
        configuration.contentInsets.trailing = 10
        configuration.imagePlacement = .trailing
        configuration.title = "First button"
        configuration.image = UIImage(systemName: "arrow.right.circle.fill")
        configuration.cornerStyle = .large
        button.configuration = configuration
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(FirstButtontouch), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var secondButton: UIButton = {
        var button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.imagePadding = 8
        configuration.titlePadding = 10
        configuration.contentInsets.top = 14
        configuration.contentInsets.bottom = 14
        configuration.contentInsets.leading = 10
        configuration.contentInsets.trailing = 10
        configuration.imagePlacement = .trailing
        configuration.title = "button with more letters"
        configuration.image = UIImage(systemName: "arrow.right.circle.fill")
        configuration.cornerStyle = .large
        button.configuration = configuration
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(SecondButtonTouch), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var thirdButton: UIButton = {
        var button = UIButton()
        var configuration = UIButton.Configuration.filled()
        configuration.imagePadding = 8
        configuration.titlePadding = 10
        configuration.contentInsets.top = 14
        configuration.contentInsets.bottom = 14
        configuration.contentInsets.leading = 10
        configuration.contentInsets.trailing = 10
        configuration.imagePlacement = .trailing
        configuration.title = "button number three(with secret)"
        configuration.image = UIImage(systemName: "arrow.right.circle.fill")
        configuration.cornerStyle = .large
        button.configuration = configuration
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(thirdButtonTouch), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Color")
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
         secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
         secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
       thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 10),
       thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    @objc
    func FirstButtontouch(){
        firstButton.transform = .init(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(2),
                       initialSpringVelocity: CGFloat(1.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
            self.firstButton.transform = CGAffineTransform.identity
        },
                       completion: { Void in()  })
    }
    @objc func SecondButtonTouch(){
        secondButton.transform = .init(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(2),
                       initialSpringVelocity: CGFloat(1.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
            self.secondButton.transform = CGAffineTransform.identity
        },
                       completion: { Void in()  })
    }
    
    @objc func thirdButtonTouch() {
        thirdButton.transform = .init(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(2),
                       initialSpringVelocity: CGFloat(1.0),
                       options: UIView.AnimationOptions.allowUserInteraction,
                       animations: {
            self.thirdButton.transform = CGAffineTransform.identity
        },
                       completion: { Void in()  })
    let vc = SparrowViewController()
        self.present(vc, animated: true)
        let buttons = [firstButton, secondButton, thirdButton]
        buttons.forEach { button in
            button.backgroundColor = .systemGray
        }
    }
}


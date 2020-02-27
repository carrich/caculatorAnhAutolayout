//
//  ViewController.swift
//  foodHealth
//
//  Created by Ngoduc on 2/25/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bg: UIView!
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        username.layer.cornerRadius = 8
        email.layer.cornerRadius = 8
        password.layer.cornerRadius = 8
        bg.layer.cornerRadius = 36
        bg.layer.shadowColor = UIColor.black.cgColor
        bg.layer.shadowOpacity = 0.5
        bg.layer.shadowOffset = .zero
        bg.layer.shadowRadius = 5
        configureTapGesture()
//        bg.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 5, height: 30)).cgPath
    }
    func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hadleTap))
        view.addGestureRecognizer(tapGesture)
    }
    @objc func hadleTap(){
        print("ok")
        view.endEditing(true)
    }

}


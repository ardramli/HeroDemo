//
//  ViewController.swift
//  HeroDemo
//
//  Created by Adli Ramli on 05/11/2019.
//  Copyright © 2019 ArdRamli. All rights reserved.
//

import UIKit
import Layout
import Hero

class ViewController: UIViewController, LayoutLoading {
    
    @IBOutlet private var label: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loadLayout(named: "ViewController.xml")
        
        self.label?.addTarget(self, action: #selector(labelTapped), for: .touchUpInside)
        self.label?.hero.id = "redView"
    }

    @objc
    func labelTapped() {
        let vc2 = ViewController2()
        vc2.hero.isEnabled = true
        vc2.hero.modalAnimationType = .zoomSlide(direction: .left)
        vc2.view.hero.id = "redView"
        self.navigationController?.pushViewController(vc2, animated: true)
        
        self.heroReplaceViewController(with: vc2)
    }
}


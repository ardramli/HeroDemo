//
//  ViewController2.swift
//  HeroDemo
//
//  Created by Adli Ramli on 05/11/2019.
//  Copyright © 2019 ArdRamli. All rights reserved.
//

import UIKit
import Layout

class ViewController2: UIViewController, LayoutLoading {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loadLayout(named: "ViewController2.xml")
    }
}

//
//  ViewController.swift
//  tabBarRainbow
//
//  Created by student on 04/03/24.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "1"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }


}


//
//  ViewController.swift
//  TodoApp
//
//  Created by Jack Song on 12/1/21.
//  Copyright © 2021 Jack Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Add Sample Data TodoList (VC)
    let todoArray = [
        "Breakfast",
        "Coffee",
        "git pull",
        "Code"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Hello TODO \(todoArray)")
    }


}


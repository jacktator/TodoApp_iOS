//
//  ViewController.swift
//  TodoApp
//
//  Created by Jack Song on 12/1/21.
//  Copyright © 2021 Jack Song. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var todoTableView: UITableView!
    
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
        
//        todoTableView.dataSource=self
//        todoTableView.delegate=self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Retrieve cell from Prototype Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        
        // Retrieve index and correcponding todo
        let index = indexPath.row
        let todo = todoArray[index];
        
        // Assign text to UI
        cell.textLabel?.text = "7am"
        cell.detailTextLabel?.text = todo
        
        return cell;
    }
}

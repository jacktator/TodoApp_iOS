//
//  ViewController.swift
//  TodoApp
//
//  Created by Jack Song on 12/1/21.
//  Copyright © 2021 Jack Song. All rights reserved.
//

import UIKit

struct Todo {
    let time: Int;
    let value: String;
}

class ViewController: UIViewController {
    
    @IBOutlet weak var todoTableView: UITableView!
    
    var todoArray: [Todo] = [
        Todo(time: 6, value: "Breakfast"),
        Todo(time: 7, value: "Coffee"),
        Todo(time: 8, value: "git pull"),
        Todo(time: 9, value: "Code")
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
        cell.textLabel?.text = "\(todo.time) am"
        cell.detailTextLabel?.text = todo.value
        
        return cell;
    }
}

extension ViewController: UITableViewDelegate {
    // When cell selected, delete that todo
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Retrieve cell from Prototype Cell
        let cell = tableView.cellForRow(at: indexPath)
        
        // Retrieve index and correcponding todo
        let index = indexPath.row
        let todo = todoArray[index];
        
        todoArray.remove(at: index)
        tableView.reloadData()
        
//        print("Selected row: \(cell?.detailTextLabel?.text)")
//        print("Selected todo: \(todo)")
        print("After deletion: \(todoArray)")
    }
}

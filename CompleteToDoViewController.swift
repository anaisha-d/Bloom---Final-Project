//
//  CompleteToDoViewController.swift
//  Bloom - Final Project
//
//  Created by Ava Park on 7/20/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
        
        
        
    }
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

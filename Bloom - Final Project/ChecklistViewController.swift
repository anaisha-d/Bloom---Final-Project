//
//  ChecklistViewController.swift
//  Bloom - Final Project
//
//  Created by Ava Park on 7/21/22.
//

import UIKit

class ChecklistItem {
    let title: String
    var isChecked: Bool = false
    
    init(title: String) {
        self.title = title
    }
}

class ChecklistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let items: [ChecklistItem] = [
        "Add solar panels to your house 🏠",
        "Ask your utility company about buying clean electricity 🏠",
        "Bring your own shopping bags ♾️",
        "Buy a water-efficient shower head 🏠",
        "Buy new appliances with Energy Star labels 🏠",
        "Change your light bulbs to LED lights 🏠",
        "Design your office or workspace around natural light 🏠",
        "Don’t drink from disposable bottled waters or aluminum cans ♾️",
        "Downsize and eliminate unneeded objects and purchases ♾️",
        "Eat less meat and dairy ♾️",
        "Get a home energy audit 🏠",
        "Hang-dry clothes instead of using a dryer ♾️",
        "Insulate your home 🏠",
        "Learn more about climate change on our information and/or resource page 🌎",
        "Make a donation to at least one of the organizations on our resource page 🌎",
        "Participate in a climate action event 🌎",
        "Plant a garden or at least one new tree 🌎",
        "Read a book about climate change 🌎",
        "Remove or xeriscape your lawn 🏠",
        "Replace your gas car with an electric vehicle 🏠",
        "Sign at least one of the petitions on our resource page 🌎",
        "Start buying furniture made from sustainably harvested wood 🏠",
        "Unplug electronic devices when not in use ♾️",
        "Visit at least one national park 🌎",
        "Wash your clothes in cold water ♾️",
        "Feel free to think more of some of your own to-dos ❕"
    ].compactMap({
        ChecklistItem(title: $0)
    })
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ToDo Checklist!"
        
        tableView.rowHeight = 60
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    //Table
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item.title
        cell.textLabel?.numberOfLines = 3
        
        cell.accessoryType = item.isChecked ? .checkmark : .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        item.isChecked = !item.isChecked
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

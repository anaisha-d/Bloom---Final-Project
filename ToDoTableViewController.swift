//
//  ToDoTableViewController.swift
//  Bloom - Final Project
//
//  Created by Ava Park on 7/20/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }
    
    func createToDos() -> [ToDo] {
        let house1 = ToDo()
        house1.name = "Add solar panels to your house 🏠"
        
        let house2 = ToDo()
        house2.name = "Ask your utility company about buying clean electricity 🏠"
        
        let day1 = ToDo()
        day1.name = "Bring your own shopping bags ♾️"
        
        let house3 = ToDo()
        house3.name = "Buy a water-efficient shower head 🏠"
        
        let house4 = ToDo()
        house4.name = "Buy new appliances with Energy Star labels 🏠"
        
        let house5 = ToDo()
        house5.name = "Change your light bulbs to LED lights 🏠"
        
        let house6 = ToDo()
        house6.name = "Design your office or workspace around natural light 🏠"
        
        let day2 = ToDo()
        day2.name = "Don’t drink from disposable bottled waters or aluminum cans ♾️"
        
        let day3 = ToDo()
        day3.name = "Downsize and eliminate unneeded objects and purchases ♾️"
        
        let day4 = ToDo()
        day4.name = "Eat less meat and dairy ♾️"
        
        let house7 = ToDo()
        house7.name = "Get a home energy audit 🏠"
        
        let day5 = ToDo()
        day5.name = "Hang-dry clothes instead of using a dryer ♾️"
        
        let house8 = ToDo()
        house8.name = "Insulate your home 🏠"
        
        let action1 = ToDo()
        action1.name = "Learn more about climate change on our information and/or resource page 🌎"
        
        let action2 = ToDo()
        action2.name = "Make a donation to at least one of the organizations on our resource page 🌎"
        
        let action3 = ToDo()
        action3.name = "Participate in a climate action event 🌎"
        
        let action4 = ToDo()
        action4.name = "Plant a garden or at least one new tree 🌎"
        
        let action5 = ToDo()
        action5.name = "Read a book about climate change 🌎"
        
        let house9 = ToDo()
        house9.name = "Remove or xeriscape your lawn 🏠"
        
        let house10 = ToDo()
        house10.name = "Replace your gas car with an electric vehicle 🏠"
        
        let action6 = ToDo()
        action6.name = "Sign at least one of the petitions on our resource page 🌎"
        
        let house11 = ToDo()
        house11.name = "Start buying furniture made from sustainably harvested wood 🏠"
        
        let day7 = ToDo()
        day7.name = "Unplug electronic devices when not in use ♾️"
        
        let action7 = ToDo()
        action7.name = "Visit at least one national park 🌎"
        
        let house12 = ToDo()
        house12.name = "Wash your clothes in cold water ♾️"
        
        let anything = ToDo()
        anything.name = "Feel free to think more of some of your own to-dos!"
         
        
        return [house1, house2, day1, house3, house4, house5, house6, day2, day3, day4, house7, day5, house8, action1, action2, action3, action4, action5, house9, house10, action6, house11, day7, action7, house12, anything]
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count
    }
     
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❕" + toDo.name
          } else {
            cell.textLabel?.text = toDo.name
          }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // this gives us a single ToDo
        let toDo = toDos[indexPath.row]

        performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let completeVC = segue.destination as? CompleteToDoViewController {
            if let toDo = sender as? ToDo {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

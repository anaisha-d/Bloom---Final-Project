//
//  PetitionsViewController.swift
//  Bloom - Final Project
//
//  Created by scholar on 7/21/22.
//

import UIKit

class PetitionsViewController: UIViewController {

    @IBOutlet weak var petitionButton1: UIButton!
    
    @IBOutlet weak var petitionButton2: UIButton!
    
    @IBOutlet weak var petitionButton3: UIButton!
    
    @IBOutlet weak var petitionButton4: UIButton!
    
    @IBOutlet weak var petitionButton5: UIButton!
    
    @IBOutlet weak var petitionButton6: UIButton!
    
    @IBOutlet weak var petitionButton7: UIButton!
    
    @IBOutlet weak var petitionButton8: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func petitionButton1pressed(_ sender: UIButton) {
        let url = URL (string: "https://www.joboneforhumanity.org/declare_a_global_warming_state_of_emergency?gclid=CjwKCAjwrNmWBhA4EiwAHbjEQO3DC5r6wPwS0vEzKWp9PE9wUhzNO93QoORp8mazhG7ULO0e87Pl5BoCJ5wQAvD_BwE")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton2pressed(_ sender: UIButton) {
        let url = URL (string: "https://www.globaldealfornature.org/petition/en/")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton3pressed(_ sender: UIButton) {
        let url = URL (string: "https://preserve.nature.org/page/81465/petition/1?locale=en-US")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton4pressed(_ sender: UIButton) {
        let url = URL (string: "https://act.seaturtles.org/page/3640/donate/1")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton5pressed(_ sender: UIButton) {
        let url = URL (string: "https://www.empoweredbylight.org/support-us?gclid=Cj0KCQjwz96WBhC8ARIsAATR2525Pxlm-cgFEBW8Ni5xcxpk9oL_mMBqimBLKAL24jV83pX6E2acV7UaAjPGEALw_wcB")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton6pressed(_ sender: UIButton) {
        let url = URL (string: "")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton7pressed(_ sender: UIButton) {
        let url = URL (string: "")!
           UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton8pressed(_ sender: UIButton) {
        let url = URL (string: "")!
           UIApplication.shared.open(url)
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



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
        let url = URL (string: "https://www.atlasmovement.org/fossilfuel?gclid=Cj0KCQjwlemWBhDUARIsAFp1rLV9Xt6Gexs5kYznF95HSiPGHFExD8GyMrIz4no4ED7C8rP97tdnuiUaAp8KEALw_wcB")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton5pressed(_ sender: UIButton) {
        let url = URL (string: "https://go.acespace.org/page/104097/petition/1?utm_medium=orga&utm_source=org_tak&utm_campaign=advo&ea.tracking.id=act-page&_gl=1*1u31xw6*_gcl_aw*R0NMLjE2NTg0ODg4NDkuQ2owS0NRanc4dU9XQmhEWEFSSXNBT3hLSjJFY1BLSlZTVW03N056NzlSVkJNMmJsWTJlSVFIRzhocmJUaWZZQWR4b1RxZVJQNUM3ckpQOGFBdEw0RUFMd193Y0I.&_ga=2.265071306.416380872.1658439159-1184853731.1658439158&_gac=1.52762714.1658488849.Cj0KCQjw8uOWBhDXARIsAOxKJ2EcPKJVSUm77Nz79RVBM2blY2eIQHG8hrbTifYAdxoTqeRP5C7rJP8aAtL4EALw_wcB")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton6pressed(_ sender: UIButton) {
        let url = URL (string: "https://act.nrdc.org/sign/global-climate-action-190906")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton7pressed(_ sender: UIButton) {
        let url = URL (string: "https://go.acespace.org/page/103808/petition/1?utm_medium=orga&utm_source=org_tak&utm_campaign=advo&ea.tracking.id=act-page&_gl=1*19xnpk3*_gcl_aw*R0NMLjE2NTg0ODg0NjYuQ2owS0NRanc4dU9XQmhEWEFSSXNBT3hLSjJFY1BLSlZTVW03N056NzlSVkJNMmJsWTJlSVFIRzhocmJUaWZZQWR4b1RxZVJQNUM3ckpQOGFBdEw0RUFMd193Y0I.&_ga=2.29542394.416380872.1658439159-1184853731.1658439158&_gac=1.162404942.1658488470.Cj0KCQjw8uOWBhDXARIsAOxKJ2EcPKJVSUm77Nz79RVBM2blY2eIQHG8hrbTifYAdxoTqeRP5C7rJP8aAtL4EALw_wcB")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func petitionButton8pressed(_ sender: UIButton) {
        let url = URL (string: "https://acespace.org/climate-advocacy/?utm_medium=ads&utm_source=ads_ggrt&utm_campaign=advo&ea.tracking.id=google-grads&gclid=Cj0KCQjw8uOWBhDXARIsAOxKJ2EcPKJVSUm77Nz79RVBM2blY2eIQHG8hrbTifYAdxoTqeRP5C7rJP8aAtL4EALw_wcB")!
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



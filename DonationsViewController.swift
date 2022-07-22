//
//  DonationsViewController.swift
//  Bloom - Final Project
//
//  Created by scholar on 7/22/22.
//

import UIKit

class DonationsViewController: UIViewController {
    
    @IBOutlet weak var donationsButton1: UIButton!
    
    @IBOutlet weak var donationsButton2: UIButton!
    
    @IBOutlet weak var donationsButton3: UIButton!
    
    @IBOutlet weak var donationsButton4: UIButton!
    
    @IBOutlet weak var donationsButton5: UIButton!
    
    @IBOutlet weak var donationsButton6: UIButton!
    
    @IBOutlet weak var donationsButton7: UIButton!
    
    @IBOutlet weak var donationsButton8: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func donationsButton1pressed(_ sender: UIButton) {
        let url = URL (string: "https://www.atlasmovement.org/donate")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton2pressed(_ sender: UIButton) {
        let url = URL (string: "https://go.acespace.org/page/103595/donate/1?ea.tracking.id=web-top-nav-but&_gl=1*iaihbg*_gcl_aw*R0NMLjE2NTg0ODI0NjUuQ2owS0NRanc4dU9XQmhEWEFSSXNBT3hLSjJFY1BLSlZTVW03N056NzlSVkJNMmJsWTJlSVFIRzhocmJUaWZZQWR4b1RxZVJQNUM3ckpQOGFBdEw0RUFMd193Y0I.&_ga=2.189515630.416380872.1658439159-1184853731.1658439158&_gac=1.182785492.1658482476.Cj0KCQjw8uOWBhDXARIsAOxKJ2EcPKJVSUm77Nz79RVBM2blY2eIQHG8hrbTifYAdxoTqeRP5C7rJP8aAtL4EALw_wcB")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton3pressed(_ sender: UIButton) {
        let url = URL (string: "https://justdiggit.org/donate/")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton4pressed(_ sender: UIButton) {
        let url = URL (string: "https://climatechangeresources.org/donation/")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton5pressed(_ sender: UIButton) {
        let url = URL (string: "https://www.empoweredbylight.org/about-us")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton6pressed(_ sender: UIButton) {
        let url = URL (string: "https://support.wwf.org.uk/climate-crisis-fund")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton7pressed(_ sender: UIButton) {
        let url = URL (string: "https://act.nrdc.org/donate/donate-one-time/")!
        UIApplication.shared.open(url)
    }
    
    @IBAction func donationsButton8pressed(_ sender: UIButton) {
        let url = URL (string: "https://foundationforclimaterestoration.org/donate-now/")!
        UIApplication.shared.open(url)
    }
}

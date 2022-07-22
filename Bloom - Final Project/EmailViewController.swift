//
//  EmailViewController.swift
//  Bloom - Final Project
//
//  Created by Anaisha Das on 7/21/22.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController, MFMailComposeViewControllerDelegate
 {

    @IBOutlet weak var repNameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var repNameTextField: UITextField!
    @IBOutlet weak var repEmailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func whenSendButtonPressed(_ sender: Any) {
        var email = ""
        if let repName = repNameTextField.text {
            repNameLabel.text = "Dear \(repName),"
        }
        if let userName = userNameTextField.text {
            userNameLabel.text = userName
        }
        if let repEmail = repEmailTextField.text {
            email = repEmail
            let body = """
            \(repNameLabel.text!)
            As my representative, I urge you to take action against the climate change crisis. I ask you to support a green economy and renewable energy sources to ensure a safe future for us and the planet.
            Best,
            \(userNameLabel.text!)
            """
            if MFMailComposeViewController.canSendMail() {

                 let mailComposeViewController = MFMailComposeViewController()
                 mailComposeViewController.mailComposeDelegate = self
                 mailComposeViewController.setToRecipients(["\(email)"])
                 mailComposeViewController.setSubject("Call for Climate Change Action")
                 mailComposeViewController.setMessageBody("\(body)", isHTML: false)

                 present(mailComposeViewController, animated: true, completion: nil)

            }
        }

    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {

         controller.dismiss(animated: true, completion: nil)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  SwiftUINavigation
//
//  Created by Lili on 27/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import UIKit
import MessageUI
class ViewController: UIViewController {
    @IBAction func emailButtonTapped(_ sender: SAButton){
        showMailCompiser()
    }
    func showMailCompiser(){
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self as! MFMailComposeViewControllerDelegate
        composer.setToRecipients (["support@seanallen.co"])
        composer.setSubject("Help!")
        composer.setMessageBody("I love your videod.., but ... help", isHTML: false)
        present(composer, animated: true)
        
    }
}
extension ViewController: MFMailComposeViewControllerDelegate{
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?){
        if  let _ = error {
              return
            controller.dismiss(animated: true)
           
        }
        switch result {
        case .cancelled:
            print("Canselled")
        case .failed:
            print("Failed to send ")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        
        }
        controller.dismiss(animated: true)
    }
}

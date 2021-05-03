//
//  AppInfoViewController.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/20/21.
//

import MessageUI
import UIKit

class AppInfoViewController: UIViewController {
  
    // private var appInfoViewModel = AppInfoViewModel()
    lazy var conversation = ConversationManager(presentingController: self, mailDelegate: self, messageDelegate: self, viewController: self)
    
        override func viewDidLoad() {
            super.viewDidLoad()
    }

    @IBAction private func sendEmail(_ sender: UIButton) {
        conversation.sendEmail(feedback: MailFeedback(recipients: ["jzh0169@auburn.edu"], subject: "FeedBack", body: "Write feedback here"))
    }
    @IBAction private func sendMessage(_ sender: UIButton) {
        conversation.sendMessage(feedback: MessageFeedBack(recipients: ["3344141243"], body: "Type here"))
    }
    @IBAction private func startCall(_ sender: UIButton) {
        conversation.makeCall(number: "3344141243")
    }
}

extension AppInfoViewController: MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
}

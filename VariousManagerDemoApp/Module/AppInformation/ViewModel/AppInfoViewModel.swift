//
//  AppInfoViewModel.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/20/21.
//

import MessageUI
import UIKit

@objc protocol ConversationManagerProtocol {
    @objc
    optional func sendEmail() -> MFMailComposeViewController
    @objc
    optional func sendMessage() -> MFMessageComposeViewController
    @objc
    optional func call()
}

class AppInfoViewModel: NSObject, ConversationManagerProtocol, MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate {
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    
    lazy var manager = ConversationManager(presentingController: self, mailDelegate: self, messageDelegate: self )
    
    func sendEmail() -> MFMailComposeViewController {
        manager.sendEmail(feedback: MailFeedback(recipients: ["jzh0169@auburn.edu"], subject: "FeedBack", body: "Write feedback here"))
    }
    
    func sendMessage() -> MFMessageComposeViewController {
        manager.sendMessage(feedback: MessageFeedBack(recipients: ["3344141243"], body: "Type here"))
    }
    
    func call() {
        manager.makeCall(number: "3344141243")
    }
}

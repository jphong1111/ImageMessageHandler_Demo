//
//  AppInfoViewController.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/20/21.
//

import MessageUI
import UIKit

class AppInfoViewController: UIViewController {
  
    private var appInfoViewModel = AppInfoViewModel()
    
        override func viewDidLoad() {
            super.viewDidLoad()
    }

    @IBAction private func sendEmail(_ sender: UIButton) {
        present(appInfoViewModel.sendEmail(), animated: true)
    }
    @IBAction private func sendMessage(_ sender: UIButton) {
        present(appInfoViewModel.sendMessage(), animated: true)
    }
    @IBAction private func startCall(_ sender: UIButton) {
        appInfoViewModel.call()
    }
}

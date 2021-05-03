//
//  FileManagerViewController.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/20/21.
//

import Foundation
import UIKit

class FileManagerViewController: UIViewController {

    @IBOutlet private weak var fileNameTextField: UITextField!
    @IBOutlet private weak var extensionTextField: UITextField!
    @IBOutlet private weak var writeTextField: UITextField!
    @IBOutlet private weak var resultTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func readFile(_ sender: UIButton) {
        let readData = FileManageHelper.manager.readFile(filename: fileNameTextField.text ?? "", type: extensionTextField.text ?? "")
        resultTextField.text = readData
    }
    @IBAction private func writeFile(_ sender: UIButton) {
//        FileManageHelper.manager.createReadAndWriteFile(fileName: fileNameTextField.text ?? "", fileExtension: extensionTextField.text ?? "", inputData: writeTextField.text ?? "")
    }
}

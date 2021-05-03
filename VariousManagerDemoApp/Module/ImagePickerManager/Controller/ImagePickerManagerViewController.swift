//
//  ImagePickerManagerViewController.swift
//  VariousManagerDemoApp
//
//  Created by JungpyoHong on 4/20/21.
//

import UIKit

class ImagePickerManagerViewController: UIViewController {
    
    @IBOutlet private weak var imageView: UIImageView!
    lazy var imagePicker = ImagePicker(presentationController: self, delegate: self)
    
    @IBOutlet private weak var faceAgeScore: UILabel!
    @IBOutlet private weak var smileScore: UILabel!
    
//    private func accessMedia() {
//        self.imagePicker.showOptions()
//    }
    
    @IBAction private func openCamera(_ sender: UIButton) {
        self.imagePicker.present(from: sender)
    }
    @IBAction private func calculate() {
        faceAgeScore.text = "\(Int.random(in: 1...50))"
        smileScore.text = "\(Int.random(in: 1...100))"
    }
}
extension ImagePickerManagerViewController: ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.imageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
    
    func didCancel() {
    }
}
// extension ImagePickerManagerViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
// }

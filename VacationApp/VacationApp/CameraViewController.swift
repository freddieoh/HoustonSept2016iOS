//
//  CameraViewController.swift
//  VacationApp
//
//  Created by Fredrick Ohen on 10/24/16.
//  Copyright © 2016 GeeCode. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var photoImageView: UIImageView!
    var imagePickerController: UIImagePickerController!
    var originalImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

}
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        self.originalImage = info [UIImagePickerControllerOriginalImage] as! UIImage
        self.photoImageView.image = originalImage
        self.imagePickerController.dismiss(animated: true, completion: nil)
    
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.imagePickerController.dismiss(animated: true, completion: nil)
    

}
    @IBAction func cameraButtonPressed(_ sender: UIButton) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        cameraButton.isHidden = true
        
    let alertController = UIAlertController(title: "WHAT DO YOU WANNA DO?!", message: "", preferredStyle: .actionSheet)
        
    let photoLibraryAction = UIAlertAction(title: "PICK FROM LIBRARY!", style: .default) { (alert :UIAlertAction) in
            
        self.imagePickerController.sourceType = .photoLibrary
        self.present(self.imagePickerController, animated: true, completion: nil)
        }
    let cameraAction = UIAlertAction(title: "TAKE A PICTURE!", style: .default) { (alert :UIAlertAction) in
   
        self.imagePickerController.sourceType = .camera
        self.present(self.imagePickerController, animated: true, completion: nil)
        }
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel , handler: nil)
        
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.addAction(cancelAction)
            self.present(alertController, animated: true, completion: nil)
    }

}

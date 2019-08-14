//
//  AddPhotoViewController.swift
//  View finder
//
//  Created by Apple on 8/13/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
// Do any additional setup after loading the view.
        }
    
    
    
    @IBAction func camera(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated : true, completion : nil)
    }
    
    @IBAction func Albums(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated : true, completion : nil)
    }
    
    func  imagePickerController(_picker : UIImagePickerController, didFinishPickingMediaWithInfo info : [UIImagePickerController.InfoKey : Any])
    {
        var newImage: UIImageView

        let selectedImage = .info
        [UIImagePickerController.InfoKey.originalImage]
            as? UIImage; do {
            newImage.image = selectedImage
                
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    private func imagePickerController(_ picker : UIImagePickerController, didFinishPickingMediaWithInfo info : [UIImagePickerController.InfoKey : Any]){
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            UIImageView.image = selectedImage
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



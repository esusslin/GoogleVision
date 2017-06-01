//
//  PurchanceVC.swift
//  GoogleVision
//
//  Created by Emmet Susslin on 6/1/17.
//  Copyright © 2017 Emmet Susslin. All rights reserved.
//

import UIKit

class PurchanceVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var barcodeTextView: UITextField!
    @IBOutlet weak var barcodeBtn: UIButton!
    @IBOutlet weak var orLbl: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoBtn: UIButton!
    
    let imagePicker = UIImagePickerController()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         imagePicker.delegate = self
        
        barcodeTextView.center.x = view.center.x
        barcodeBtn.center.x = view.center.x
        orLbl.center.x = view.center.x
        
        imageView.center.x = view.center.x
        photoBtn.center.x = view.center.x

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func photoBtn_pressed(_ sender: Any) {
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            
            
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
        }
        else if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
        } else{
            print("Something went wrong")
        }
        
        
        
        self.dismiss(animated: true, completion: nil)
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

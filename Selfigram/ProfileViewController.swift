//
//  ProfileViewController.swift
//  Selfigram
//
//  Created by Andy Li on 4/27/17.
//  Copyright © 2017 Andy Li. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    @IBAction func CameraButtonPressed(_ sender: Any) {
        print("camera pressed")
        
        let pickController = UIImagePickerController()
        
        pickController.delegate =  self
        
        if TARGET_OS_SIMULATOR == 1{
            pickController.sourceType = .photoLibrary
        }else{
            pickController.sourceType = .camera
            pickController.cameraDevice = .front
            pickController.cameraCaptureMode = .photo
        }
        
        self.present(pickController, animated: true, completion: nil)
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]){
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            profileImageView.image = image
            
        }
        
        dismiss(animated: true , completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        usernameLabel.text = "youName"
        
        
        //MAKE ROUND PROFILE PIC
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        profileImageView.layer.borderWidth = 3.0
        profileImageView.layer.borderColor = UIColor.white.cgColor
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

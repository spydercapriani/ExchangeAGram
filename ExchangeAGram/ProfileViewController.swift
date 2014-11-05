//
//  ProfileViewController.swift
//  ExchangeAGram
//
//  Created by Daniel Gilbert on 10/31/14.
//  Copyright (c) 2014 Daniel Gilbert. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, FBLoginViewDelegate {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var fbLoginView: FBLoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "publish_actions"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mapViewButtonPressed(sender: UIButton) {
        performSegueWithIdentifier("mapSegue", sender: nil) // Transition to MapViewController
    }
    
    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
        println("Error: \(error.localizedDescription)")
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        let userImageURL = "https://graph.facebook.com/\(user.objectID)/picture?type=small"
        let url = NSURL(string: userImageURL)
        let imageData = NSData(contentsOfURL: url!)
        let image = UIImage(data: imageData!)
        
        lblName.text = user.name
        profileImage.image = image
        
        println(user)
    }
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        profileImage.hidden = false
        lblName.hidden = false
        
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        profileImage.hidden = true
        lblName.hidden = true
        
    }
    
}

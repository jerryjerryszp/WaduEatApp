//
//  UserViewController.swift
//  WaduEat
//
//  Created by Jerry Shi on 2018-06-18.
//  Copyright © 2018 Jerry Shi. All rights reserved.
//

import Foundation
import UIKit

class UserViewController: UIViewController {
    
    let user = User.sharedUserInfo
    
    //name and pic
    var nameLabel: UILabel? = nil
    var profilePic: UIImageView? = nil
    
    //followers shit
    var placesCountLabel: UILabel? = nil
    var followersCount: UILabel? = nil
    var followingCount: UILabel? = nil
    var placesCountTitle: UILabel? = nil
    var followersCountTitle: UILabel? = nil
    var followingCountTitle: UILabel? = nil
    
    //buttons and shit
    var settings: UIButton? = nil
    var editProfile: UIButton? = nil
    var goToList: UIButton?
    var goToMapView: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(displayP3Red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        self.navigationController?.navigationBar.barTintColor = UIColor.white

        createProfilePic()
        createNameLabel()
        createGeneralInfoLabels()
        createGoToListButton()
        createGoToMapButton()
        
        
    }
    
    
    func createProfilePic() {
        let y: CGFloat = 30
        let width: CGFloat = 120
        let height: CGFloat = 120
        let x: CGFloat = (self.view.frame.width - width) / 2.0
        
        let profileImage = UIImage(named: "profile")
        self.profilePic = UIImageView(image: profileImage!)
        self.profilePic?.frame = CGRect(x: x, y: y, width: width, height: height)
        self.profilePic?.contentMode = .scaleToFill
        self.profilePic?.layer.borderWidth = 0.5
        self.profilePic?.layer.borderColor = UIColor.lightGray.cgColor
        self.profilePic?.layer.cornerRadius = 60.0
        self.profilePic?.clipsToBounds = true
        
        self.view.addSubview(self.profilePic!)
    }
    
    func createNameLabel() {
        let y: CGFloat = 165
        let width: CGFloat = 200
        let height: CGFloat = 50
        let x: CGFloat = (self.view.frame.width - width) / 2.0
        
        self.nameLabel = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.nameLabel?.textColor = UIColor.black
        self.nameLabel?.backgroundColor = UIColor.clear
        self.nameLabel?.text = "Anonymous"
        self.nameLabel?.font = UIFont(name: "KohinoorTelugu-Light", size: 25)
        self.nameLabel?.numberOfLines = 0
        self.nameLabel?.textAlignment = .center
        self.view.addSubview(self.nameLabel!)
    }
    
    func createGeneralInfoLabels() {
        //numbers
        placesLabel()
        followersLabel()
        followingLabel()
        //titles
        placesTitle()
        followersTitle()
        followingTitle()
    }
    
    //numbers
    func placesLabel() {
        let y: CGFloat = 230
        let width: CGFloat = 80
        let height: CGFloat = 20
        let x: CGFloat = ((self.view.frame.width - width) / 2.0) - 80
        self.placesCountLabel = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.placesCountLabel?.textColor = UIColor.black
        self.placesCountLabel?.backgroundColor = UIColor.clear
        self.placesCountLabel?.text = "0"
        self.placesCountLabel?.font = UIFont(name: "KohinoorTelugu-Light", size: 15)
        self.placesCountLabel?.numberOfLines = 0
        self.placesCountLabel?.textAlignment = .center
        self.view.addSubview(self.placesCountLabel!)
    }
    func followersLabel() {
        let y: CGFloat = 230
        let width: CGFloat = 80
        let height: CGFloat = 20
        let x: CGFloat = (self.view.frame.width - width) / 2.0
        self.followersCount = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.followersCount?.textColor = UIColor.black
        self.followersCount?.backgroundColor = UIColor.clear
        self.followersCount?.text = "0"
        self.followersCount?.font = UIFont(name: "KohinoorTelugu-Light", size: 15)
        self.followersCount?.numberOfLines = 0
        self.followersCount?.textAlignment = .center
        self.view.addSubview(self.followersCount!)
    }
    func followingLabel() {
        let y: CGFloat = 230
        let width: CGFloat = 80
        let height: CGFloat = 20
        let x: CGFloat = ((self.view.frame.width - width) / 2.0) + 80
        self.followingCount = UILabel()
        self.followingCount = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.followingCount?.textColor = UIColor.black
        self.followingCount?.backgroundColor = UIColor.clear
        self.followingCount?.text = "0"
        self.followingCount?.font = UIFont(name: "KohinoorTelugu-Light", size: 15)
        self.followingCount?.numberOfLines = 0
        self.followingCount?.textAlignment = .center
        self.view.addSubview(self.followingCount!)
    }
    
    //titles
    func placesTitle() {
        let y: CGFloat = 250
        let width: CGFloat = 80
        let height: CGFloat = 20
        let x: CGFloat = ((self.view.frame.width - width) / 2.0) - 80
        self.placesCountTitle = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.placesCountTitle?.textColor = UIColor.darkGray
        self.placesCountTitle?.backgroundColor = UIColor.clear
        self.placesCountTitle?.text = "places"
        self.placesCountTitle?.font = UIFont(name: "KohinoorTelugu-Light", size: 12)
        self.placesCountTitle?.numberOfLines = 0
        self.placesCountTitle?.textAlignment = .center
        self.view.addSubview(self.placesCountTitle!)
    }
    func followersTitle() {
        let y: CGFloat = 250
        let width: CGFloat = 80
        let height: CGFloat = 20
        let x: CGFloat = (self.view.frame.width - width) / 2.0
        self.followersCountTitle = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.followersCountTitle?.textColor = UIColor.darkGray
        self.followersCountTitle?.backgroundColor = UIColor.clear
        self.followersCountTitle?.text = "followers"
        self.followersCountTitle?.font = UIFont(name: "KohinoorTelugu-Light", size: 12)
        self.followersCountTitle?.numberOfLines = 0
        self.followersCountTitle?.textAlignment = .center
        self.view.addSubview(self.followersCountTitle!)
    }
    func followingTitle() {
        let y: CGFloat = 250
        let width: CGFloat = 80
        let height: CGFloat = 20
        let x: CGFloat = ((self.view.frame.width - width) / 2.0) + 80
        self.followingCountTitle = UILabel()
        self.followingCountTitle = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        self.followingCountTitle?.textColor = UIColor.darkGray
        self.followingCountTitle?.backgroundColor = UIColor.clear
        self.followingCountTitle?.text = "following"
        self.followingCountTitle?.font = UIFont(name: "KohinoorTelugu-Light", size: 12)
        self.followingCountTitle?.numberOfLines = 0
        self.followingCountTitle?.textAlignment = .center
        self.view.addSubview(self.followingCountTitle!)
    }
    
    //setting up buttons
    func createGoToListButton() {
        let y: CGFloat = 300
        let width: CGFloat = 200
        let height: CGFloat = 33
        let x: CGFloat = (self.view.frame.width - width) / 2.0
        
        self.goToList = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
        goToList?.setTitle("View My List", for: .normal)
        goToList?.titleLabel?.font = UIFont(name: "KohinoorTelugu-Light", size: 17)
        goToList?.backgroundColor = UIColor.clear
        goToList?.setTitleColor(UIColor.black, for: .normal)
        goToList?.layer.cornerRadius = 5
        goToList?.layer.borderWidth = 0.5
        goToList?.layer.borderColor = UIColor.black.cgColor
        goToList?.addTarget(self, action: #selector(self.viewList), for: .touchUpInside)
        self.view.addSubview(goToList!)
    }
    
    @objc func viewList() {
        self.performSegue(withIdentifier: "goToList", sender: self)
    }
    
    func createGoToMapButton() {
        let y: CGFloat = 340
        let width: CGFloat = 200
        let height: CGFloat = 33
        let x: CGFloat = (self.view.frame.width - width) / 2.0
        
        self.goToMapView = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
        goToMapView?.setTitle("View My Map", for: .normal)
        goToMapView?.titleLabel?.font = UIFont(name: "KohinoorTelugu-Light", size: 17)
        goToMapView?.backgroundColor = UIColor.clear
        goToMapView?.setTitleColor(UIColor.black, for: .normal)
        goToMapView?.layer.cornerRadius = 5
        goToMapView?.layer.borderWidth = 0.5
        goToMapView?.layer.borderColor = UIColor.black.cgColor
        goToMapView?.addTarget(self, action: #selector(self.viewMap), for: .touchUpInside)
        self.view.addSubview(goToMapView!)
    }
    
    @objc func viewMap() {
        self.performSegue(withIdentifier: "goToMap", sender: self)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

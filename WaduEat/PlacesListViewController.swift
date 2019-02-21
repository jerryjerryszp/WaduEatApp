//
//  PlacesListViewController.swift
//  WaduEat
//
//  Created by Jerry Shi on 2018-06-18.
//  Copyright © 2018 Jerry Shi. All rights reserved.
//

import Foundation

import UIKit

class PlacesListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let user = User.sharedUserInfo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navBarAddButton()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func navBarAddButton() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPlace))
    }
    @objc func addPlace() {
        self.performSegue(withIdentifier: "addPlace", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension PlacesListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.placesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = user.placesList[indexPath.row]
        //cell?.detailTextLabel?.text = "\(share[indexPath.row])"
        
        return cell!
    }
}

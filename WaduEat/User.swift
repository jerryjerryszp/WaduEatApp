//
//  User.swift
//  WaduEat
//
//  Created by Jerry Shi on 2018-06-18.
//  Copyright © 2018 Jerry Shi. All rights reserved.
//
import Foundation

class User {
    static let sharedUserInfo = User()
    var name: String? = nil
    var imageData: NSData? = nil
    var placeCount: Int = 0
    var followerCount: Int = 0
    var followingCount: Int = 0
    var placesList = ["chatbar", "liuyishou", "gyubee", "greentea"]
    var placesLat = [43.822202, 43.845576, 43.815782, 43.848435]
    var placesLon = [-79.298530, -79.379669, -79.350003, -79.348865]
    var locations = [["name": "chatbar", "lat": 43.822202, "lon": -79.298530],
                     ["name": "liuyishou", "lat": 43.845576, "lon": -79.379669],
                     ["name": "gyubee", "lat": 43.815782, "lon": -79.350003],
                     ["name": "greentea", "lat": 43.848435, "lon": -79.348865]]
}


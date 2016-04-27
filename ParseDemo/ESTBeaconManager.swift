//
//  ESTBeaconManager.swift
//  ParseDemo
//
//  Created by Danveer Singh Saini on 2016-03-26.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Foundation
import UIKit

// 1. Add the ESTBeaconManagerDelegate protocol
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, ESTBeaconManagerDelegate  {
    
    var window: UIWindow?
    
    // 2. Add a property to hold the beacon manager and instantiate it
    let beaconManager = ESTBeaconManager()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // 3. Set the beacon manager's delegate
        self.beaconManager.delegate = self
        
        return true
}

}

// this is where we left off:
self.beaconManager.delegate = self
// add this below:
self.beaconManager.requestAlwaysAuthorization()
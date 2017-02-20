//
//  ViewController.swift
//  StravaResultKitDemo
//
//  Created by Brennan Stehling on 2/13/17.
//  Copyright © 2017 SmallSharpTools LLC. All rights reserved.
//

import UIKit
import StravaKit
import StravaResultKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let accessToken = "INSERT_ACCESS_TOKEN_HERE"
        Strava.configure(accessToken: accessToken, athleteDictionary: nil, alternateRequestor: nil)

        StravaResult.getAthlete { (result) in
            switch result {
            case .success(let athlete):
                print("athlete: \(athlete)")
                break
            case .failure(let error):
                print("error: \(error)")
                break
            }
        }
    }

}

//
//  StravaResult.swift
//  StravaResultKitDemo
//
//  Created by Brennan Stehling on 2/14/17.
//  Copyright © 2017 SmallSharpTools LLC. All rights reserved.
//

import Foundation
import Result
import StravaKit

public enum StravaResultError: Error {
    case requestError(NSError)
}

public extension Strava {

    var result: StravaResult {
        return StravaResult.sharedInstance
    }

}

open class StravaResult: NSObject {

    public static let sharedInstance = StravaResult()

}

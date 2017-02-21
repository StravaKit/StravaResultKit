//
//  StravaAthlete.swift
//  StravaKit
//
//  Created by Brennan Stehling on 2/14/17.
//  Copyright © 2017 SmallSharpTools LLC. All rights reserved.
//

import Foundation
import Result
import StravaKit

public extension StravaResult {

    @discardableResult
    public static func getAthlete(resultHandler: ResultClosure<Athlete, StravaResultError>?) -> URLSessionTask? {
        return Strava.getAthlete { (athlete, error) in
            handleResult(item: athlete, error: error, resultHandler: resultHandler)
        }
    }

    @discardableResult
    public static func getAthlete(athleteId: Int, resultHandler: ResultClosure<Athlete, StravaResultError>?) -> URLSessionTask? {
        return Strava.getAthlete(athleteId, completionHandler: { (athlete, error) in
            handleResult(item: athlete, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getAthleteFriends(_ page: Page? = nil, resultHandler: ResultClosure<[Athlete], StravaResultError>?) -> URLSessionTask? {
        return Strava.getAthleteFriends(page, completionHandler: { (athletes, error) in
            handleResult(item: athletes, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getAthleteZones(_ page: Page? = nil, resultHandler: ResultClosure<Zones, StravaResultError>?) -> URLSessionTask? {
        return Strava.getAthleteZones(page, completionHandler: { (zones, error) in
            handleResult(item: zones, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getStats(_ athleteId: Int, resultHandler: ResultClosure<Stats, StravaResultError>?) -> URLSessionTask? {
        return Strava.getStats(athleteId, completionHandler: { (stats, error) in
            handleResult(item: stats, error: error, resultHandler: resultHandler)
        })
    }

}

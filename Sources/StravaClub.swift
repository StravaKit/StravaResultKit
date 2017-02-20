//
//  StravaClub.swift
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
    public static func getClub(_ clubId: Int, resultHandler: ResultClosure<Club?, StravaResultError>?) -> URLSessionTask? {
        return Strava.getClub(clubId, completionHandler: { (club, error) in
            handleResult(item: club, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getClubs(_ page: Page? = nil, resultHandler: ResultClosure<[Club]?, StravaResultError>?) -> URLSessionTask? {
        return Strava.getClubs(page, completionHandler: { (clubs, error) in
            handleResult(item: clubs, error: error, resultHandler: resultHandler)
        })
    }

}

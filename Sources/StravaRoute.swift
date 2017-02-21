//
//  StravaRoute.swift
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
    public static func getRoute(_ routeId: Int, resultHandler: ResultClosure<Route, StravaResultError>?) -> URLSessionTask? {
        return Strava.getRoute(routeId, completionHandler: { (route, error) in
            handleResult(item: route, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getRoutes(_ athleteId: Int, page: Page? = nil, resultHandler: ResultClosure<[Route], StravaResultError>?) -> URLSessionTask? {
        return Strava.getRoutes(athleteId, page: page, completionHandler: { (routes, error) in
            handleResult(item: routes, error: error, resultHandler: resultHandler)
        })
    }

}

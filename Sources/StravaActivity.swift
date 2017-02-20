//
//  StravaActivity.swift
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
    public static func getActivities(_ page: Page? = nil, resultHandler: ResultClosure<[Activity]?, StravaResultError>?) -> URLSessionTask? {
        return Strava.getActivities {
            (activities, error) in
            handleResult(item: activities, error: error, resultHandler: resultHandler)
        }
    }

    @discardableResult
    public static func getActivity(_ activityId: Int, resultHandler: ResultClosure<Activity?, StravaResultError>?) -> URLSessionTask? {
        return Strava.getActivity(activityId) {
            (activity, error) in
            handleResult(item: activity, error: error, resultHandler: resultHandler)
        }
    }

    @discardableResult
    public static func getFollowingActivities(_ page: Page? = nil, resultHandler: ResultClosure<[Activity]?, StravaResultError>?) -> URLSessionTask? {
        return Strava.getFollowingActivities { (activities, error) in
            handleResult(item: activities, error: error, resultHandler: resultHandler)
        }
    }

}

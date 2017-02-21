//
//  StravaSegment.swift
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
    public static func getSegment(_ segmentId: Int, resultHandler: ResultClosure<Segment, StravaResultError>?) -> URLSessionTask? {
        return Strava.getSegment(segmentId, completionHandler: { (segment, error) in
            handleResult(item: segment, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getSegments(_ mapBounds: MapBounds, page: Page? = nil, resultHandler: ResultClosure<[Segment], StravaResultError>?) -> URLSessionTask? {
        return Strava.getSegments(mapBounds, page: page, completionHandler: { (segments, error) in
            handleResult(item: segments, error: error, resultHandler: resultHandler)
        })
    }

    @discardableResult
    public static func getStarredSegments(_ page: Page? = nil, resultHandler: ResultClosure<[Segment], StravaResultError>?) -> URLSessionTask? {
        return Strava.getStarredSegments(page) { (segments, error) in
            handleResult(item: segments, error: error, resultHandler: resultHandler)
        }
    }

    @discardableResult
    public static func getSegmentLeaderboard(_ segmentId: Int, page: Page? = nil, resultHandler: ResultClosure<Leaderboard, StravaResultError>?) -> URLSessionTask? {
        return Strava.getSegmentLeaderboard(segmentId, page: page) { (leaderboards, error) in
            handleResult(item: leaderboards, error: error, resultHandler: resultHandler)
        }
    }

    @discardableResult
    public static func getSegmentEfforts(_ segmentId: Int, page: Page? = nil, resultHandler: ResultClosure<[SegmentEffort], StravaResultError>?) -> URLSessionTask? {
        return Strava.getSegmentEfforts(segmentId, page: page, completionHandler: { (efforts, error) in
            handleResult(item: efforts, error: error, resultHandler: resultHandler)
        })
    }

}

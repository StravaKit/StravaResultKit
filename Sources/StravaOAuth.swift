//
//  StravaOAuth.swift
//  StravaResultKitDemo
//
//  Created by Brennan Stehling on 2/14/17.
//  Copyright © 2017 SmallSharpTools LLC. All rights reserved.
//

import Foundation
import Result
import StravaKit

public extension StravaResult {

    public static func set(clientId: String, clientSecret: String, redirectURI: String, sandbox: Bool? = nil) {
        Strava.set(clientId: clientId, clientSecret: clientSecret, redirectURI: redirectURI)
    }

    public static func userLogin(scope: OAuthScope, state: String = "") -> URL? {
        return Strava.userLogin(scope: scope, state: state)
    }

    public static func openURL(_ aURL: URL, sourceApplication: String?) -> Bool {
        return Strava.openURL(aURL, sourceApplication: sourceApplication)
    }

    @discardableResult
    public static func deauthorize(resultHandler: ResultClosure<Bool, StravaResultError>?) -> URLSessionTask? {
        return Strava.deauthorize {
            (success, error) in
            handleResult(item: success, error: error, resultHandler: resultHandler)
        }
    }

}

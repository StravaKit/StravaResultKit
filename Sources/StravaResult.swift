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

public typealias ResultClosure<T, Error: Swift.Error> = (_ result: Result<T, Error>) -> ()

public enum StravaResultError: Error {
    case requestError(NSError)
}

open class StravaResult: NSObject {

    public static let sharedInstance = StravaResult()

    internal static func handleResult<T>(item: T?, error: NSError?, resultHandler: ResultClosure<T?, StravaResultError>?) {
        if Strava.isDebugging {
            debugPrint("item: \(item)")
            debugPrint("error: \(error)")
        }
        if let error = error {
            resultHandler?(.failure(.requestError(error)))
        }
        else {
            resultHandler?(.success(item))
        }
    }

}

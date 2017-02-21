
import Foundation
import CoreLocation
import StravaKit
import StravaResultKit

// Prepare for testing locally with alternative requestor.

// Configuration

let accessToken = "INSERT_ACCESS_TOKEN_HERE"
Strava.configure(accessToken: accessToken, athleteDictionary: nil, alternateRequestor: nil)

// Mapping

StravaResult.getAthlete { (result) in
    result.flatMap({ (athlete) -> Result<Athlete, StravaResultError> in
        return athlete
    })
}

// Playground Configuration
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


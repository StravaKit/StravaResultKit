
import Foundation
import CoreLocation
import StravaKit
import Result
import StravaResultKit

// Prepare for testing locally with alternative requestor.

// Configuration

let accessToken = "INSERT_ACCESS_TOKEN_HERE"
Strava.configure(accessToken: accessToken, athleteDictionary: nil, alternateRequestor: nil)

// Mapping

struct SimpleAthlete {
    public let athleteId: Int
    public let name: String
    public let location: String
}

func mapSimpleAthlete(athlete: Athlete) -> SimpleAthlete {
    let athleteId = athlete.athleteId
    let name = "\(athlete.firstName) \(athlete.lastName)"
    let location = "\(athlete.city), \(athlete.state) \(athlete.country)"
    return SimpleAthlete(athleteId: athleteId, name: name, location: location)
}

func flatMapSimpleAthlete(athlete: Athlete) -> Result<SimpleAthlete, StravaResultError> {
    return .success(mapSimpleAthlete(athlete: athlete))
}

// Map

StravaResult.getAthlete { (result) in
    let athlete = result.map(mapSimpleAthlete)
    print("map")
    dump(athlete)
}

// Flat Map

StravaResult.getAthlete { (result) in
    let simpleResult = result.flatMap(flatMapSimpleAthlete)
    print("flatMap")
    dump(simpleResult)
}

// Playground Configuration
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

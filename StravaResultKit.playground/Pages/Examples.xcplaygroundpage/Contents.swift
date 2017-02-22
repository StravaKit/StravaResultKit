
import Foundation
import CoreLocation
import StravaKit
import StravaResultKit

// Prepare for testing locally with alternative requestor.

// Configuration

let accessToken = "INSERT_ACCESS_TOKEN_HERE"
Strava.configure(accessToken: accessToken, athleteDictionary: nil, alternateRequestor: nil)

// Activity

StravaResult.getActivities { (result) in
    switch result {
    case .success(let activities):
        print("activities: \(activities)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error.localizedDescription)")
        break
    }
}

StravaResult.getActivity(1) { (result) in
    switch result {
    case .success(let activity):
        print("activity: \(activity)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getFollowingActivities { (result) in
    switch result {
    case .success(let activities):
        print("activities: \(activities)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

// Athlete

StravaResult.getAthlete { (result) in
    switch result {
    case .success(let athlete):
        print("athlete: \(athlete)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getAthlete(athleteId: 1) { (result) in
    switch result {
    case .success(let athlete):
        print("athlete: \(athlete)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getAthleteFriends { (result) in
    switch result {
    case .success(let athletes):
        print("athletes: \(athletes)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getAthleteZones { (result) in
    switch result {
    case .success(let zones):
        print("zones: \(zones)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getStats(1) { (result) in
    switch result {
    case .success(let stats):
        print("stats: \(stats)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

// Club

StravaResult.getClub(1) { (result) in
    switch result {
    case .success(let club):
        print("club: \(club)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getClubs { (result) in
    switch result {
    case .success(let clubs):
        print("clubs: \(clubs)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

// Route

StravaResult.getRoute(1) { (result) in
    switch result {
    case .success(let route):
        print("route: \(route)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getRoutes(1) { (result) in
    switch result {
    case .success(let routes):
        print("routes: \(routes)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

// Segment

StravaResult.getSegment(1) { (result) in
    switch result {
    case .success(let segment):
        print("segment: \(segment)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

if let mapBounds = MapBounds(coordinate1: CLLocationCoordinate2DMake(1.0, 1.0), coordinate2: CLLocationCoordinate2DMake(1.0, 1.0)) {
    StravaResult.getSegments(mapBounds) { (result) in
        switch result {
        case .success(let segments):
            print("segments: \(segments)")
            break
        case .failure(.noResult):
            print("No Result")
            break
        case .failure(let error):
            print("error: \(error)")
            break
        }
    }
}

StravaResult.getStarredSegments { (result) in
    switch result {
    case .success(let segments):
        print("segments: \(segments)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getSegmentLeaderboard(1) { (result) in
    switch result {
    case .success(let leaderboard):
        print("leaderboard: \(leaderboard)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

StravaResult.getSegmentEfforts(1) { (result) in
    switch result {
    case .success(let efforts):
        print("efforts: \(efforts)")
        break
    case .failure(.noResult):
        print("No Result")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}

// Upload

// Note: Nothing to implement.

// Authorization

/*
// Warning: Deauthorizing will invalidate current access token.
StravaResult.deauthorize { (result) in
    switch result {
    case .success(let success):
        print("success: \(success)")
        break
    case .failure(let error):
        print("error: \(error)")
        break
    }
}
 */

// Playground Configuration
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


import Foundation
import GooglePlaces
import CoreLocation

struct PlacePrediction: Identifiable {
    let id: String        // placeId
    let name: String
    let address: String
}

struct PlaceResult: Identifiable {
    let id: String
    let name: String
    let address: String
    let latitude: Double
    let longitude: Double
}

class GymSearchService {

    static let shared = GymSearchService()
    private init() {}

    private let placesClient = GMSPlacesClient.shared()

    // Step 1 - cheap autocomplete search, no coordinates yet
    func searchGyms(query: String) async throws -> [PlacePrediction] {
        let filter = GMSAutocompleteFilter()
        filter.types = ["gym"]

        return try await withCheckedThrowingContinuation { continuation in
            placesClient.findAutocompletePredictions(
                fromQuery: query,
                filter: filter,
                sessionToken: nil
            ) { predictions, error in
                if let error = error {
                    continuation.resume(throwing: error)
                    return
                }

                let results = (predictions ?? []).map {
                    PlacePrediction(
                        id: $0.placeID,
                        name: $0.attributedPrimaryText.string,
                        address: $0.attributedSecondaryText?.string ?? ""
                    )
                }
                continuation.resume(returning: results)
            }
        }
    }

    // Step 2 - only called when user taps a result
    func fetchPlaceDetails(placeId: String) async throws -> PlaceResult {
        let fields: GMSPlaceField = [.name, .formattedAddress, .coordinate]

        return try await withCheckedThrowingContinuation { continuation in
            placesClient.fetchPlace(fromPlaceID: placeId, placeFields: fields, sessionToken: nil) { place, error in
                if let error = error {
                    continuation.resume(throwing: error)
                    return
                }

                guard let place = place else {
                    continuation.resume(throwing: NSError(domain: "GymSearchService", code: 0))
                    return
                }

                let result = PlaceResult(
                    id: placeId,
                    name: place.name ?? "Unknown",
                    address: place.formattedAddress ?? "",
                    latitude: place.coordinate.latitude,
                    longitude: place.coordinate.longitude
                )
                continuation.resume(returning: result)
            }
        }
    }
}

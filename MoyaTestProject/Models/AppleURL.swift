// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let appleURL = try? newJSONDecoder().decode(AppleURL.self, from: jsonData)

import Foundation

// MARK: - AppleURLElement
struct AppleURLElement: Codable {
    let name: String
}

typealias AppleURL = [AppleURLElement]

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let emojiSearchModel = try? newJSONDecoder().decode(EmojiSearchModel.self, from: jsonData)

import Foundation

// MARK: - EmojiSearchModel
struct EmojiSearchModel: Codable {
    let login: String
    let avatarURL: String

    enum CodingKeys: String, CodingKey {
        case login
        case avatarURL = "avatar_url"
    }
}

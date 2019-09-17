import Foundation

public let emojiCategories: [String: [String]] = {
  var categories: [String: [String]] = [:]

  if let url = Bundle(for: Something.self).url(forResource: "Emojis", withExtension: "json") {
    if let data = try? Data(contentsOf: url), let json = try? JSONSerialization.jsonObject(with: data, options: []) {
      if let stringDict = json as? [String: [String]] {
        categories = stringDict
      }
    }
  }

  return categories
}()

class Something {}

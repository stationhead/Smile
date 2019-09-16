import Foundation

public let emojiList: [String: String] = {
  var list: [String: String] = [:]

  if let url = Bundle.main.url(forResource: "Emoji", withExtension: "json") {
    if let data = try? Data(contentsOf: url), let json = try? JSONSerialization.jsonObject(with: data, options: []) {
      if let stringDict = json as? [String: String] {
        list = stringDict
      }
    }
  }

  return list
}()


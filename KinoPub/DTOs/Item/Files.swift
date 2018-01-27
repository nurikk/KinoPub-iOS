import Foundation
import ObjectMapper

public class Files: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let quality = "quality"
    static let w = "w"
    static let url = "url"
    static let h = "h"
  }

  // MARK: Properties
  public var quality: String?
  public var w: Int?
  public var url: Url?
  public var h: Int?

  
  public required init?(map: Map) {

  }

  
  public func mapping(map: Map) {
    quality <- map[SerializationKeys.quality]
    w <- map[SerializationKeys.w]
    url <- map[SerializationKeys.url]
    h <- map[SerializationKeys.h]
  }
}

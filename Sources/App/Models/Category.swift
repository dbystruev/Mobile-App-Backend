import FluentSQLite
import Vapor

final class Category: Codable {
    var id: Int?
    var name: String
}

extension Category: SQLiteModel {}
extension Category: Content {}
extension Category: Migration {}
extension Category: Parameter {}

import Foundation
import SwiftData

@Model
final class InterestItem: Identifiable {
    var id: UUID
    var title: String
    var date: Date
    var isCompleted: Bool

    init(title: String, date: Date, isCompleted: Bool = false) {
        self.id = UUID()
        self.title = title
        self.date = date
        self.isCompleted = isCompleted
    }
}

import Foundation

struct Goal: Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
}

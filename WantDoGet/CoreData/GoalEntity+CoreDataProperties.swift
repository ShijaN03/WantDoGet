
import Foundation
import CoreData


extension GoalEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<GoalEntity> {
        return NSFetchRequest<GoalEntity>(entityName: "GoalEntity")
    }

    @NSManaged public var id: String?
    @NSManaged public var title: String?
    @NSManaged public var isCompleted: Bool

}

extension GoalEntity : Identifiable {

}

protocol GoalListRouterProtocol: AnyObject {
    
}

class GoalListRouter {
    weak var view: GoalListViewProtocol?
    
}

extension GoalListRouter: GoalListRouterProtocol {
    
}

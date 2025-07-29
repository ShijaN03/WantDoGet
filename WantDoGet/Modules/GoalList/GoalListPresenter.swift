protocol GoalListPresenterProtocol: AnyObject {
    func presentGoals(_ goals: [Goal])
}

class GoalListPresenter {
    
    weak var view: GoalListViewProtocol?
    
    init(view: GoalListViewProtocol?) {
        self.view = view
    }
    
}

extension GoalListPresenter: GoalListPresenterProtocol {
    
    func presentGoals(_ goals: [Goal]) {
        print("📤 Presenter получил goals: \(goals.map { $0.title })")
        view?.displayGoals(goals)
    }
    
}

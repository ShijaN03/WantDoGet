protocol GoalListPresenterProtocol: AnyObject {
    func viewDidLoaded()
}

class GoalListPresenter {
    weak var view: GoalListViewProtocol?
    
    func presentGoals( _ goals: [Goal]) {
        let viewModels = goals.map {
            Goal(id: $0.id, title: $0.title, isCompleted: $0.isCompleted)
        }
        view?.displayGoals(viewModels)
    }
}

extension GoalListPresenter: GoalListPresenterProtocol {
    func viewDidLoaded() {
        // start loading info
    }
}

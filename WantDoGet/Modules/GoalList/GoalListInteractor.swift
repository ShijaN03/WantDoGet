protocol GoalListInteractorProtocol: AnyObject {
    func fetchGoals()
}

class GoalListInteractor {
    weak var presenter: GoalListPresenter?
    
    private let apiService = MockUserGoalAPIService()
    
}

extension GoalListInteractor: GoalListInteractorProtocol {
    
    func fetchGoals() {
        apiService.loadGoals { [weak self] result in
            switch result {
            case .success(let goals):
                self?.presenter?.presentGoals(goals)
            case .failure(_):
                print("error")
            }
        }
    }
}

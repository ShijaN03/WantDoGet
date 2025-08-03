import Foundation

class GoalListPresenter {
    
    weak var view: GoalListViewProtocol?
    var interactor: GoalListInteractorInput?
    var router: GoalListRouterProtocol?
    
    private var goals: [Goal] = []
    
}

extension GoalListPresenter: GoalListPresenterInput {
    
    func viewDidLoad() {
        interactor?.fetchGoals()
    }
    
    func goal(with index: Int) -> Goal {
        return goals[index]
    }
    
    func numberOfGoals() -> Int {
        return goals.count
    }
    
    
    
    
    
}

extension GoalListPresenter: GoalListInteractorOutput {
    
    func didFetchGoals(_ goals: [Goal]) {
        self.goals = goals
        DispatchQueue.main.async {
            self.view?.reloadData()
        }
    }
    
}

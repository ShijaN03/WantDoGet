// View
protocol GoalListViewProtocol: AnyObject {
    func reloadData()
}
// View -> Presenter
protocol GoalListPresenterInput: AnyObject {
    func viewDidLoad()
    func goal(with index: Int) -> Goal
    func numberOfGoals() -> Int
}
// Presenter -> Interactor
protocol GoalListInteractorInput: AnyObject {
    func fetchGoals()
}
// Interactor -> Presenter
protocol GoalListInteractorOutput: AnyObject {
    func didFetchGoals(_ goals: [Goal])
}
// Presenter -> Router
protocol GoalListRouterProtocol: AnyObject {
    
}

protocol GoalListInteractorProtocol: AnyObject {
    func fetchGoals()
}

class GoalListInteractor: GoalListInteractorProtocol  {
    
    var presenter: GoalListPresenterProtocol?
    
    private let apiService: MockUserGoalAPIService
    
    init(apiService: MockUserGoalAPIService = MockUserGoalAPIService()) {
        
        self.apiService = apiService
        
    }
    
    func fetchGoals() {
        print("🔄 Interactor запрашивает цели")
        apiService.loadGoals { [weak self] goals in
            print("✅ Interactor получил goals: \(goals.map { $0.title })")
            
            self?.presenter?.presentGoals(goals)
        }
    }
    
}


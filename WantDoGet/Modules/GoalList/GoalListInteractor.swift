
class GoalListInteractor: GoalListInteractorInput  {
    
    var presenter: GoalListInteractorOutput?
    
    private let apiService: MockUserGoalAPIService
    
    init(apiService: MockUserGoalAPIService = MockUserGoalAPIService()) {
        
        self.apiService = apiService
        
    }
    
    func fetchGoals() {
        
        apiService.loadGoals { [weak self] goals in
            
            self?.presenter?.didFetchGoals(goals)
        }
    }
    
}


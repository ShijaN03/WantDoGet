import UIKit

class GoalListBuilder {
    
    static func build() -> UIViewController {
        
        let apiService = MockUserGoalAPIService()
        let view = GoalListView()
        let presenter = GoalListPresenter()
        let interactor = GoalListInteractor(apiService: apiService)
        let router = GoalListRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        router.view = view
        
        
        return view
    }
}

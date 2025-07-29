import UIKit

class GoalListBuilder {
    static func build() -> UIViewController {
        
        let apiService = MockUserGoalAPIService()
        let view = GoalListView()
        let interactor = GoalListInteractor(apiService: apiService)
        let presenter = GoalListPresenter(view: view)
        let router = GoalListRouter()
        
        interactor.presenter = presenter
        view.interactor = interactor
        view.router = router
        
        router.view = view
        
        return view
    }
}

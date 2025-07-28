import UIKit

class GoalListBuilder {
    static func build() -> UIViewController {
        let view = GoalListView()
        let interactor = GoalListInteractor()
        let presenter = GoalListPresenter()
        let router = GoalListRouter()
        
        view.interactor = interactor
        view.router = router
        
        interactor.presenter = presenter
        
        presenter.view = view
        
        router.view = view
        
        return view
    }
}

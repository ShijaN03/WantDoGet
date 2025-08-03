import UIKit

class DashboardBuilder {
    
    static func build() -> UIViewController {
        let view = DashboardView()
        let presenter = DashboardPresenter()
        let interactor = DashboardInteractor()
        let router = DashboardRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        router.view = view
        
        return view
    }
}

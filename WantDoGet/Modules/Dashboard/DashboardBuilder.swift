import UIKit

class DashboardBuilder {
    
    static func build() -> UIViewController {
        
        let view = DashboardView()
        let interactor = DashboardInteractor()
        let presenter = DashboardPresenter(view: view)
        let router = DashboardRouter()
        
        interactor.presenter = presenter
        view.interactor = interactor
        view.router = router
        
        router.view = view
        
        return view
    }
}

import UIKit

class OptionsBuilder {
    
    static func build() -> UIViewController {
        
        let view = OptionsView()
        let presenter = OptionsPresenter()
        let interactor = OptionsInteractor()
        let router = OptionsRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        router.view = view
        
        return view
        
    }
}


import UIKit

class OptionsBuilder {
    
    static func build() -> UIViewController {
        
        let view = OptionsView()
        let presenter = OptionsPresenter(view: view)
        let interactor = OptionsInteractor()
        let router = OptionsRouter()
        
        view.interactor = interactor
        view.router = router
        
        interactor.presenter = presenter
        
        router.view = view
        
        return view
    }
}


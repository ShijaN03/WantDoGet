
class OptionsPresenter {
    
    weak var view: OptionsViewProtocol?
    var interactor: OptionsInteractorInput?
    var router: OptionsRouterProtocol?
    
}

extension OptionsPresenter: OptionsPresenterInput {
    func viewDidLoad() {
        
    }
}

extension OptionsPresenter: OptionsInteractorOutput {
    
}

protocol OptionsPresenterProtocol: AnyObject {
    
}

class OptionsPresenter {
    
    weak var view: OptionsViewProtocol?
    
    init(view: OptionsViewProtocol?) {
        self.view = view
    }
}

extension OptionsPresenter: OptionsPresenterProtocol {
    
}

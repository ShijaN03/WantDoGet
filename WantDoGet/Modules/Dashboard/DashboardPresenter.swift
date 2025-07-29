protocol DashboardPresenterProtocol: AnyObject {
    
}

class DashboardPresenter {
    
    weak var view: DashboardViewProtocol?
    
    init(view: DashboardViewProtocol?) {
        self.view = view
    }
}

extension DashboardPresenter: DashboardPresenterProtocol {
    
}


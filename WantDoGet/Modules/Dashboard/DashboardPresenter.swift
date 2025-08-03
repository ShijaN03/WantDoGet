
class DashboardPresenter {
    
    weak var view: DashboardViewProtocol?
    var interactor: DashboardInteractorInput?
    var router: DashboardRouterProtocol?
    
}

extension DashboardPresenter: DashboardPresenterInput {
    
    func viewDidLoad() {
        
    }
}

extension DashboardPresenter: DashboardInteractorOutput {
    
}


import UIKit

protocol DashboardViewProtocol: AnyObject {
    
}

class DashboardView: UIViewController {
    
    var interactor: DashboardInteractorProtocol?
    var router: DashboardRouterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
    }
}

extension DashboardView: DashboardViewProtocol {
    
}

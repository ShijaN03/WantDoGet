import UIKit

class DashboardView: UIViewController {
    
    var presenter: DashboardPresenterInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        presenter?.viewDidLoad()
    }
}

extension DashboardView: DashboardViewProtocol {
    
}

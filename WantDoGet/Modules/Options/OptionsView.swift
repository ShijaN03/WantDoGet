import UIKit

protocol OptionsViewProtocol: AnyObject {
    
}

class OptionsView: UIViewController {
    
    var interactor: OptionsInteractorProtocol?
    var router: OptionsRouterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}

extension OptionsView: OptionsViewProtocol {
    
}

import UIKit

class OptionsView: UIViewController {
    
    var presenter: OptionsPresenterInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}

extension OptionsView: OptionsViewProtocol {
    
}

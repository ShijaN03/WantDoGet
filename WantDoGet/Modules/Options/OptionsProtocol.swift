// Presenter -> View, Router -> View
protocol OptionsViewProtocol: AnyObject {
    
}
// View -> Presenter
protocol OptionsPresenterInput: AnyObject {
    func viewDidLoad()
}
// Presenter -> Interactor
protocol OptionsInteractorInput: AnyObject {
    
}
// Interactor -> Presenter
protocol OptionsInteractorOutput: AnyObject {
    
}
// Presenter -> Router
protocol OptionsRouterProtocol: AnyObject {
    
}

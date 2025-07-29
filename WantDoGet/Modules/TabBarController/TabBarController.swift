import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setUpTabBarShape()
    }
    
    private func setUpTabBar() {
        viewControllers = [
            generateVC(viewController: GoalListBuilder.build(), title: "Goals", image: UIImage(systemName: "list.bullet") ?? UIImage()),
            generateVC(viewController: DashboardBuilder.build(), title: "Dashboard", image: UIImage(systemName: "list.dash.header.rectangle") ?? UIImage()),
            generateVC(viewController: OptionsBuilder.build(), title: "Options", image: UIImage(systemName: "gearshape.fill") ?? UIImage())
            
        ]
    }
    
    private func setUpTabBarShape() {
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                center: CGPoint(
                    x: tabBar.bounds.width/2,
                    y: tabBar.bounds.height/2 - 15),
                size: CGSize(
                    width: 300,
                    height: 70)),
            cornerRadius: 40)
        let layer = CAShapeLayer()
        layer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(layer, at: 0)
        
        tabBar.itemPositioning = .centered
        tabBar.itemWidth = tabBar.bounds.width / 7
        
        layer.fillColor = UIColor.tabBarBackgroundColor.cgColor
        tabBar.tintColor = .tabBarSelectedItemColor
        tabBar.unselectedItemTintColor = .tabBarItemColor
        
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        tabBar.isTranslucent = true
        tabBar.backgroundColor = .clear
        
    }
    
    private func generateVC(viewController: UIViewController?, title: String, image: UIImage) -> UIViewController {
        guard let vc = viewController else {
            assertionFailure("failed to create \(title)")
            return UIViewController()
        }
        
        vc.tabBarItem.title = title
        vc.tabBarItem.image = image
        
        let navController = UINavigationController(rootViewController: vc)
        
        return navController
    }
    
}

import UIKit

protocol GoalListViewProtocol: AnyObject {
    func displayGoals(_ viewModels: [Goal])
}

class GoalListView: UIViewController {
    
    var interactor: GoalListInteractorProtocol?
    var router: GoalListRouterProtocol?
    
    let tableView = UITableView()
    
    private var goals: [Goal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        view.backgroundColor = .lightGray
        interactor?.fetchGoals()
        
    }
    
    func displayGoals(_ viewModels: [Goal]) {
        self.goals = viewModels
        tableView.reloadData()
    }
    
    private func setUpTableView() {
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.translatesAutoresizingMaskIntoConstraints = false 
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension GoalListView: GoalListViewProtocol {
    
}

extension GoalListView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let goal = goals[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = goal.title
        
        return cell
 
    }
    
    
}




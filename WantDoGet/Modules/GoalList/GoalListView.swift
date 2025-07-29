import UIKit

protocol GoalListViewProtocol: AnyObject {
    func displayGoals(_ goals: [Goal])
}

class GoalListView: UIViewController {
    
    var interactor: GoalListInteractorProtocol?
    var router: GoalListRouterProtocol?
    
    private var goals: [Goal] = []
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        view.backgroundColor = .lightGray
        interactor?.fetchGoals()
        
    }
    
    private func setUpTableView() {
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(GoalListCell.self, forCellReuseIdentifier: "GoalCell")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension GoalListView: GoalListViewProtocol {
    
    func displayGoals(_ goals: [Goal]) {
        print("📥 View получил goals: \(goals.map { $0.title })")
        self.goals = goals
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension GoalListView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GoalListCell.identifier, for: indexPath) as? GoalListCell else { return UITableViewCell() }
        cell.configure(with: goals[indexPath.row])
        
        return cell
    }
    
    
}




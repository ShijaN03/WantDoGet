import UIKit

class GoalListView: UIViewController {
    
    var presenter: GoalListPresenterInput?
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        view.backgroundColor = .lightGray

        presenter?.viewDidLoad()
    }
    
    private func setUpTableView() {
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(GoalListCell.self, forCellReuseIdentifier: GoalListCell.identifier)
        
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
    
    func reloadData() {
        tableView.reloadData()
    }
}

extension GoalListView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfGoals() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GoalListCell.identifier, for: indexPath) as? GoalListCell else { return UITableViewCell() }
        guard let goal = presenter?.goal(with: indexPath.row) else { return  UITableViewCell() }
        
        cell.configure(with: goal)
        
        return cell
    }
    
    
}




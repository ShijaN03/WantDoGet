import UIKit

class GoalListCell: UITableViewCell {
    
    static let identifier = "GoalCell"
    
    private let containerView: UIView = {
        
        let view = UIView()
        
        view.backgroundColor = UIColor.goalCellBackgroundColor
        view.layer.cornerRadius = 12
        
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let goalLabel: UILabel = {
        
        let label = UILabel()
        
        label.textColor = UIColor.goalCellTextColor
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let isCompletedLabel: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor.goalCellTextColor
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    func configure(with goal: Goal) {
        goalLabel.text = goal.title
        isCompletedLabel.text = String(goal.isCompleted)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        contentView.addSubview(containerView)
        containerView.addSubview(goalLabel)
        containerView.addSubview(isCompletedLabel)
        
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 100),
        
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            goalLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            goalLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            
            isCompletedLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50),
            isCompletedLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

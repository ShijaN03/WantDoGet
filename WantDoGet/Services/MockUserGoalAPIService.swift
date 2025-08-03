import Foundation

protocol MockUserGoalAPIServiceProtocol {
    func loadGoals(completion: @escaping ([Goal]) -> Void)
}

class MockUserGoalAPIService: MockUserGoalAPIServiceProtocol {
    
    func loadGoals(completion: @escaping ([Goal]) -> Void) {
        DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + 2) {
            
            let mockGoals = [
                Goal(id: UUID(), title: "Проснуться в 8:00", isCompleted: false),
                Goal(id: UUID(), title: "Чистить зубы", isCompleted: false),
                Goal(id: UUID(), title: "Программировать", isCompleted: false),
                Goal(id: UUID(), title: "Пойти в зал", isCompleted: false),
                Goal(id: UUID(), title: "Лечь спать в 22:00", isCompleted: false),
            ]
            completion(mockGoals)
        }
    }
}

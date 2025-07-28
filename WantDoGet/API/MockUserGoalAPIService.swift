import Foundation

protocol MockUserGoalAPIServiceProtocol {
    func loadGoals(completion: @escaping (Result<[Goal], Error>) -> Void)
}

class MockUserGoalAPIService: MockUserGoalAPIServiceProtocol {
    func loadGoals(completion: @escaping (Result<[Goal], any Error>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let goals = [
                Goal(id: UUID(), title: "Проснуться в 8:00", isCompleted: false),
                Goal(id: UUID(), title: "Чистить зубы", isCompleted: false),
                Goal(id: UUID(), title: "Программировать", isCompleted: false),
                Goal(id: UUID(), title: "Пойти в зал", isCompleted: false),
                Goal(id: UUID(), title: "Лечь спать в 22:00", isCompleted: false),
            ]
            completion(.success(goals))
        }
    }
}

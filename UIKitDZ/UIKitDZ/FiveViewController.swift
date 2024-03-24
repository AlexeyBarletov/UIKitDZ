//
//  FiveViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 24.03.2024.
//

import UIKit

class FiveViewController: UIViewController {
    
    enum MessageError: Error {
        case emptyMessages
    }
    
    
    
    var networkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Task {
            let messages = try await fetchMessages()
            print(messages)
        }
    }
    
    
    //    func fetchMessagesResult(completion: @escaping ([Message]) -> Void) {
    //        networkService.fetchMessages { message in
    //            completion(message)
    //        }
    //    }
    //}
    //
    //
    //    func fetchMessages() async -> [Message] {
    //огда мы используем withCheckedContinuation,мы можем приостановить выполнение вашей асинхронной функции, затем продолжить ее выполнение
    //         await withCheckedContinuation { continuation in
    //            networkService.fetchMessages { messages in
    //                continuation.resume(returning: messages)
    //            }
    //        }
    //    }
    //}
    
    //обрабатываем этот метод через witchCheckedContinuation

    func fetchMessages () async throws -> [Message] {
        //withCheckedThrowingContinuation позволяет создавать асинхронные функции, которые могут бросать исключения (ошибки) во время выполнения.
        return try await withCheckedThrowingContinuation { continuation in
            networkService.fetchMessages { messages in
                if messages.isEmpty {
                    continuation.resume(throwing: MessageError.emptyMessages)
                } else {
                    continuation.resume(returning: messages)
                }
            }
        }
    }
    
    struct Message: Decodable, Identifiable {
        let id: Int
        let from: String
        let message: String
    }
    
    class NetworkService {
        
        func fetchMessages(completion: @escaping ([Message]) -> Void) {
            let url = URL(string: "https://hws.dev/user-messages.json")!
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    if let messages = try? JSONDecoder().decode([Message].self, from: data) {
                        completion(messages)
                        return
                    }
                }
                completion([])
            }
            .resume()
        }
    }
}

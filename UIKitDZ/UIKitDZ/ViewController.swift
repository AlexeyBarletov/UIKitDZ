// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class ViewController: UIViewController {
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let phrasesService = PhrasesService()

        // 1 используем очередь DispatchQueue.global()
        for element in 0 ..< 10 {
            DispatchQueue.global(qos: .default).async {
                Task {
                    await phrasesService.addPhrase("Phrase \(element)")
                }
            }
        }

        Task {
            let phrases = await phrasesService.phrases
            print(phrases)
        }
    }
}

// 3 Используем Ancor
actor PhrasesService {
    // 2 Используем DispatchSemaphore для решения проблемы с потоко безопасностью
    let semafor = DispatchSemaphore(value: 1)

    var phrases: [String] = []

    func addPhrase(_ phrase: String) {
        semafor.wait()
        phrases.append(phrase)
        semafor.signal()
    }
}

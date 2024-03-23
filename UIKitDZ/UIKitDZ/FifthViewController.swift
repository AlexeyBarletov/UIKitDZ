//
//  FifthViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit

///  Проблема номер 3  livelock
/// livelock возникате когда программа выполняет несколько событий  парраллельно но эти программы не приближают ее к завершению
class FifthViewController: UIViewController {
    
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let people1 = People1()
        let people2 = People2()
        
        let thread1 = Thread {
            people1.isDifferentDirections = true
            people1.walkPast(with: people2)
        }
        
        thread1.start()
        
        let thread2 = Thread {
            people2.walkPast(with: people1)
        }
        
        thread2.start()
    }
    
}

class People1 {
    var isDifferentDirections = false;
    
    func walkPast(with people: People2) {
        while (!people.isDifferentDirections) {
            print("People1 не может обойти People2")
            sleep(1)
        }
        
        print("People1 смог пройти прямо")
        isDifferentDirections = true
    }
}

class People2 {
    var isDifferentDirections = false;
    
    func walkPast(with people: People1) {
        while (!people.isDifferentDirections) {
            print("People2 не может обойти People1")
            sleep(1)
        }
        
        print("People2 смог пройти прямо")
        isDifferentDirections = true
    }
}

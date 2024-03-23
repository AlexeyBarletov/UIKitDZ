//
//  Seventh ViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 23.03.2024.
//

import UIKit

/// Задача  объяснить почему в первом случае ошибка а во втором ее нет
final class SeventhViewController: UIViewController {
    
    ///подписываем Post на Senable
    /// Senable добавляет поддержку данных, которые могут быть безопасно перенесены в другой поток.
   final class Post: Sendable {
        
    }
    
    enum State1: Sendable {
        case loading
        case data(String)
    }
    
    enum State2: Sendable {
        case loading
        case data(Post) // Out: Associated value 'data' of 'Sendable'-conforming enum 'State2' has non-sendable type 'ViewController.Post'
    }
    
}


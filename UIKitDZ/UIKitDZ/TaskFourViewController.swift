// ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Задача  номер 1 
final class TaskFourViewController: UIViewController {
    ///подписываем Post на Senable
    /// Senable добавляет поддержку данных, которые могут быть безопасно перенесены в другой поток.
    final class Post: Sendable {}
    
    enum State1: Sendable {
        case loading
        case data(String)
    }
    
    enum State2: Sendable {
        case loading
        case data(Post) // Out: Associated value 'data' of 'Sendable'-conforming enum 'State2' has non-sendable type 'ViewController.Post'
    }
}




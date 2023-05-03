//
//  FeedViewController.swift
//  LearnDependencyDiagram
//
//  Created by Galih Samodra Wicaksono on 03/05/23.
//

import UIKit

class FeedViewController: UIViewController {
    var loadFeed: ((([String]) -> Void) -> Void)!
    
    convenience init(loadFeed: @escaping (([String]) -> Void) -> Void) {
        self.init()
        self.loadFeed = loadFeed
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFeed { loadedItems in
            // update UI
        }
    }
}

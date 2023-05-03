//
//  FeedViewController.swift
//  LearnDependencyDiagram
//
//  Created by Galih Samodra Wicaksono on 03/05/23.
//

import UIKit

protocol FeedLoader {
    func loadFeed(completion: ([String]) -> Void)
}

class FeedViewController: UIViewController {
    var loader: FeedLoader!
    
    convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loader.loadFeed { loadedItems in
            // update UI
        }
    }
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: ([String]) -> Void) {
        // call load feed api
    }
}

class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: ([String]) -> Void) {
        // call load feed api local data (cache)
    }
}

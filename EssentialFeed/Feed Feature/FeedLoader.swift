//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Coding on 8/10/21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping(LoadFeedResult) -> Void)
}

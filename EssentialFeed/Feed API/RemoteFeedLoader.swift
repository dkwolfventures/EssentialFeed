//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Coding on 8/11/21.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping(Error) -> Void)
}

public final class RemoteFeedLoader {
    
    //MARK: - properties
    
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
    }
    
    //MARK: - lifecycle
    
    public init(url: URL, client: HTTPClient){
        self.url = url
        self.client = client
    }
    
    //MARK: - helpers
    
    public func load(completion: @escaping(Error) -> Void = { _ in }){
        client.get(from: url) { error in
            completion(.connectivity)
        }
    }
    
}

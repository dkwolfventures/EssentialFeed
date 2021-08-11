//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Coding on 8/10/21.
//

import XCTest

class RemoteFeedLoader {
     
    func load(){
        HTTPClientSpy.shared.get(from: URL(string: "https://a-url.com")!)
    }
    
}

class HTTPClient {
    static var shared = HTTPClient()
        
    func get(from url: URL){}
}

class HTTPClientSpy: HTTPClient {
    var requestedURL:  URL?
    
    override func get(from url: URL){
        requestedURL = url
    }
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL(){
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let _ = RemoteFeedLoader()
                
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL(){
        
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
        
    }

}
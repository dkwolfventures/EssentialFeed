//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Coding on 8/10/21.
//

import XCTest

class RemoteFeedLoader {
     
}

class HTTPClient {
    var requestedURL:  URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL(){
        let client = HTTPClient()
        let _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }

}

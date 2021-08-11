//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Coding on 8/10/21.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let url: URL
}

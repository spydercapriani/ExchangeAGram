//
//  FeedItem.swift
//  ExchangeAGram
//
//  Created by Daniel Gilbert on 10/20/14.
//  Copyright (c) 2014 Daniel Gilbert. All rights reserved.
//

import Foundation
import CoreData

@objc (FeedItem)
class FeedItem: NSManagedObject {

    @NSManaged var caption: String
    @NSManaged var image: NSData
    
}

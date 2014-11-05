//
//  FeedItem.swift
//  ExchangeAGram
//
//  Created by Daniel Gilbert on 11/5/14.
//  Copyright (c) 2014 Daniel Gilbert. All rights reserved.
//

import Foundation
import CoreData

@objc(FeedItem)
class FeedItem: NSManagedObject {

    @NSManaged var caption: String
    @NSManaged var image: NSData
    @NSManaged var thumbnail: NSData
    @NSManaged var latitude: NSNumber
    @NSManaged var longitude: NSNumber

}

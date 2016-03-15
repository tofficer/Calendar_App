//
//  Event.swift
//  CalendarAPP
//
//  Created by Tyler Officer on 3/12/16.
//  Copyright © 2016 Tyler Officer. All rights reserved.
//

import UIKit

struct Event {
    
    var eventInfo :String
    var eventDate :String
    
    init(eventInfo: String, eventDate :String) {
        self.eventInfo = eventInfo
        self.eventDate = eventDate
    }
}

/*
class Event : NSObject, NSCoding {
    
    var eventInfo :String
    var eventDate :String
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("events")
    
    struct PropertyKey{
        static let eventInfoKey = "eventInfo"
        static let eventDateKey = "eventDate"
        
    }
    
    
    init(eventInfo: String, eventDate :String) {
        self.eventInfo = eventInfo
        self.eventDate = eventDate
        
        super.init()
    }
    
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(eventInfo, forKey: PropertyKey.eventInfoKey)
        coder.encodeObject(self.eventDate, forKey: PropertyKey.eventDateKey)
    }
    
    required convenience init? (coder decoder: NSCoder) {
        let eventInfo = decoder.decodeObjectForKey(PropertyKey.eventInfoKey) as! String
        
        let eventDate = decoder.decodeObjectForKey(PropertyKey.eventDateKey) as! String
        
        self.init(
            eventInfo: eventInfo,
            eventDate: eventDate
        )
    }
}
*/
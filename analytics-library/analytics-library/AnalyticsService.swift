//
//  AnalyticsService.swift
//  analytics-library
//
//  Created by Abhishek Ravi on 18/07/24.
//

import Foundation

public class AnalyticsService {
    
    var firebaseAnanlytics: FirebaseAnalytics
    var moengageAnalytics: MoengageAnalytics
    
    public init() {
        self.firebaseAnanlytics = FirebaseAnalytics()
        self.moengageAnalytics = MoengageAnalytics()
    }
    
    public func log(_ eventName: String, attribute: [String: Any]) {
        firebaseAnanlytics.send(eventName, attr: attribute)
        moengageAnalytics.send(eventName, attr: attribute)
    }
}

//
//  DeviceLocationService .swift
//  Food Rescue
//
//  Created by Milan Gupta on 9/17/23.
//

import Combine
import CoreLocation

class DeviceLocationService: ObservableObject {
    
    var coordinatesPublisher = PassthroughSubject<CLLocationCoordinate2D, Error>()
    
    private init() {
        
    }
    
    static let shared = DeviceLocationService()
}

//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Yehoon on 3/24/18.
//  Copyright © 2018 Yehoon Joo. All rights reserved.
//

import Foundation
import Alamofire

class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather() {
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            print(response)
        }
    }
}

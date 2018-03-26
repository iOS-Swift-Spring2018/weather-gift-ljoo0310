//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Yehoon on 3/24/18.
//  Copyright © 2018 Yehoon Joo. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    var dailySum = ""
    
    func getWeather(completed: @escaping () -> ()) {
        let weatherURL = urlBase + urlAPIKey + coordinates
        
        Alamofire.request(weatherURL).responseJSON { response in // waits for response until function is done running
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                } else {
                    print("Could not return a temperature.")
                }
                if let summary = json["daily"]["summary"].string {
                    self.dailySum = summary
                } else {
                    print("Could not return a summary.")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}

//
//  DayWeatherCell.swift
//  WeatherGift
//
//  Created by Yehoon on 4/1/18.
//  Copyright © 2018 Yehoon Joo. All rights reserved.
//

import UIKit

class DayWeatherCell: UITableViewCell {
    
    @IBOutlet weak var dayCellIcon: UIImageView!
    @IBOutlet weak var dayCellWeekday: UILabel!
    @IBOutlet weak var dayCellMaxTemp: UILabel!
    @IBOutlet weak var dayCellMinTemp: UILabel!
    @IBOutlet weak var dayCellSummary: UITextView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

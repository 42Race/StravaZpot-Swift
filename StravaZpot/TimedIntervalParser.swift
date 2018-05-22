//
//  TimedIntervalParser.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 31/10/16.
//  Copyright © 2016 SweetZpot AS. All rights reserved.
//

import Foundation
import SwiftyJSON

public class TimedDoubleIntervalParser : Parser {
    public func from(json: JSON) -> TimedInterval<Double> {
        return TimedInterval<Double>(min: json["min"].double ?? 0.0,
                                     max: json["max"].double ?? 0.0,
                                     time: json["time"].int ?? 0)
    }
}

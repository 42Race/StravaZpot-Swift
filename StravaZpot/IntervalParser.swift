//
//  IntervalParser.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 28/10/16.
//  Copyright © 2016 SweetZpot AS. All rights reserved.
//

import Foundation
import SwiftyJSON

public class IntervalDoubleParser : Parser {
    public func from(json: JSON) -> Interval<Double> {
        return Interval<Double>(min: json["min"].double ?? 0.0, max: json["max"].double ?? 0.0)
    }
}

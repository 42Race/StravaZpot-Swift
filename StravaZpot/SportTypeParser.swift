//
//  SportTypeParser.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 31/10/16.
//  Copyright © 2016 SweetZpot AS. All rights reserved.
//

import Foundation
import SwiftyJSON

public class SportTypeParser : Parser {
    public func from(json: JSON) -> SportType {
        return SportType(rawValue: json.string!)!
    }
}

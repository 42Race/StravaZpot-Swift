//
//  JoinResultParser.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 31/10/16.
//  Copyright © 2016 SweetZpot AS. All rights reserved.
//

import Foundation
import SwiftyJSON

public class JoinResultParser : Parser {
    public func from(json: JSON) -> JoinResult {
        return JoinResult(success: json["success"].bool!,
                          active: json["active"].bool!,
                          membership: json["membership"].membership!)
    }
}

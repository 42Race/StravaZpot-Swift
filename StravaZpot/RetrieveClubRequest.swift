//
//  RetrieveClubRequest.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 4/11/16.
//  Copyright © 2016 SweetZpot AS. All rights reserved.
//

import Foundation
import SwiftyJSON

public class RetrieveClubRequest : GetRequest<Club> {
    init(client : HTTPClient, id : Int) {
        super.init(client: client, url: "clubs/\(id)", parse: { $0.club })
    }
}

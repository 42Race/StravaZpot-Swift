//
//  JSONExtension.swift
//  StravaZpot
//
//  Created by Tomás Ruiz López on 2/11/16.
//  Copyright © 2016 SweetZpot AS. All rights reserved.
//

import Foundation
import SwiftyJSON

extension JSON {
    var achievementType : AchievementType? {
        return exists() ? AchievementTypeParser().from(json: self) : nil
    }
    
    var resourceState : ResourceState? {
        return exists() ? ResourceStateParser().from(json: self) : ResourceState.meta
    }
    
    var activity : Activity? {
        return exists() ? ActivityParser().from(json: self) : nil
    }
    
    var athlete : Athlete? {
        return exists() ? AthleteParser().from(json: self) : nil
    }
    
    var time : Time? {
        return exists() ? TimeParser().from(json: self) : nil
    }
    
    var date : Date? {
        return exists() ? DateParser().from(json: self) : nil
    }
    
    var dateArray : EquatableArray<Date>? {
        return exists() ? EquatableArray(array: self.flatMap{ $1.date }) : nil
    }
    
    var distance : Distance? {
        return exists() ? DistanceParser().from(json: self) : nil
    }
    
    var speed : Speed? {
        return exists() ? SpeedParser().from(json: self) : nil
    }
    
    var activityType : ActivityType? {
        return exists() ? ActivityTypeParser().from(json: self) : nil
    }
    
    var coordinates : Coordinates? {
        return exists() ? CoordinatesParser().from(json: self) : nil
    }
    
    var photoSummary : PhotoSummary? {
        return exists() ? PhotoSummaryParser().from(json: self) : nil
    }
    
    var map : Map? {
        return exists() ? MapParser().from(json: self) : nil
    }
    
    var workoutType : WorkoutType? {
        return exists() ? WorkoutTypeParser().from(json: self) : nil
    }
    
    var gear : Gear? {
        return exists() ? GearParser().from(json: self) : nil
    }
    
    var gearArray : EquatableArray<Gear>? {
        return exists() ? EquatableArray(array: self.flatMap{ $1.gear }) : nil
    }
    
    var temperature : Temperature? {
        return exists() ? TemperatureParser().from(json: self) : nil
    }
    
    var split : Split? {
        return exists() ? SplitParser().from(json: self) : nil
    }
    
    var splitArray : EquatableArray<Split>? {
        return exists() ? EquatableArray(array: self.flatMap{ $1.split }) : nil
    }
    
    var segmentEffort : SegmentEffort? {
        return exists() ? SegmentEffortParser().from(json: self) : nil
    }
    
    var segmentEffortArray : EquatableArray<SegmentEffort>? {
        return exists() ? EquatableArray(array: self.flatMap{ $1.segmentEffort }) : nil
    }
    
    var gender : Gender? {
        return exists() ? GenderParser().from(json: self) : nil
    }
    
    var friendStatus : FriendStatus? {
        return exists() ? FriendStatusParser().from(json: self) : nil
    }
    
    var athleteType : AthleteType? {
        return exists() ? AthleteTypeParser().from(json: self) : nil
    }
    
    var measurementPreference : MeasurementPreference? {
        return exists() ? MeasurementPreferenceParser().from(json: self) : nil
    }
    
    var club : Club? {
        return exists() ? ClubParser().from(json: self) : nil
    }
    
    var clubArray : EquatableArray<Club>? {
        return exists() ? EquatableArray(array: self.flatMap{ $1.club }) : nil
    }
    
    var clubType : ClubType? {
        return exists() ? ClubTypeParser().from(json: self) : nil
    }
    
    var skillLevel : SkillLevel? {
        return exists() ? SkillLevelParser().from(json: self) : nil
    }
    
    var terrain : Terrain? {
        return exists() ? TerrainParser().from(json: self) : nil
    }
    
    var frameType : FrameType? {
        return exists() ? FrameTypeParser().from(json: self) : nil
    }
    
    var interval : Interval<Double>? {
        return exists() ? IntervalDoubleParser().from(json: self) : nil
    }
    
    var intervalArray : EquatableArray<Interval<Double>>? {
        return exists() ? EquatableArray(array: self.flatMap{ $1.interval }) : nil
    }
    
    var membership : Membership? {
        return exists() ? MembershipParser().from(json: self) : nil
    }
}

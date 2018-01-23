//
//  Config.swift
//  MultipleEnvironment
//
//  Created by Asaduzzaman Shuvro on 1/23/18.
//  Copyright © 2018 Asaduzzaman Shuvro. All rights reserved.
//

import Foundation

struct AppConfig {
    
    enum AppBuildType {
        case debug
        case uat
        case release
    }
    
    static var appBuildType: AppBuildType {
        #if DEBUG
            return .debug
        #elseif UAT
            return .uat
        #else
            return .release
        #endif
    }
    
    static var baseUrl: String = ""
    static var hockeyAppSecret: String = ""
    static var urbanAirshipAppId:String = ""
    static var urbanAirshipAppSecrete: String = ""
    static var firebasAppId: String = ""
    static var firebaseAppSecrete: String = ""
    static var mixPannelAppId: String = ""
    static var mixPannenAppSecret: String = ""
    static var appName:String = ""
    
    static func setTheAllConfigurations() {
        switch appBuildType {
        case .debug:
            baseUrl = "dev base url"
            hockeyAppSecret = "dev hockey app secrete"
            urbanAirshipAppId = "dev urban airship app id"
            urbanAirshipAppSecrete = "dev urban airship app secrete"
            firebasAppId = "dev firebase app id"
            firebaseAppSecrete = "dev firebase app secrete"
            mixPannelAppId = "dev mix panel app id"
            mixPannenAppSecret = "dev mix pannel app secrete"
            appName = "Spenn Dev"
        case .uat:
            baseUrl = "uat base url"
            hockeyAppSecret = "uat hockey app secrete"
            urbanAirshipAppId = "uat urban airship app id"
            urbanAirshipAppSecrete = "uat urban airship app secrete"
            firebasAppId = "uat firebase app id"
            firebaseAppSecrete = "uat firebase app secrete"
            mixPannelAppId = "uat mix panel app id"
            mixPannenAppSecret = "uat mix pannel app secrete"
            appName = "Spenn UAT"
        case .release:
            baseUrl = "release base url"
            hockeyAppSecret = "release hockey app secrete"
            urbanAirshipAppId = "release urban airship app id"
            urbanAirshipAppSecrete = "release urban airship app secrete"
            firebasAppId = "release firebase app id"
            firebaseAppSecrete = "release firebase app secrete"
            mixPannelAppId = "release mix panel app id"
            mixPannenAppSecret = "release mix pannel app secrete"
            appName = "Spenn"
        }
     
        configs.append((names: "App Name", value: appName))
        configs.append((names: "Base Url", value: baseUrl))
        configs.append((names: "Hockey Secrete", value: hockeyAppSecret))
        configs.append((names: "Urban Airship Id", value: urbanAirshipAppId))
        configs.append((names: "Urban Airship Secrete", value: urbanAirshipAppSecrete))
        configs.append((names: "Firebase id", value: firebasAppId))
        configs.append((names: "Firebase secrete", value: firebaseAppSecrete))
        configs.append((names: "Mixpannel App Id", value: mixPannelAppId))
        configs.append((names: "Mixpannel secrete", value: mixPannenAppSecret))



    }
    
    //------------------------------------------------------
    // MARK:- temporary var
    //------------------------------------------------------
    
    static var configs: [(names: String, value: String)] = []
    
}

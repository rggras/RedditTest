//
//  RedditAPI.swift
//  RedditTest
//
//  Created by Rodrigo Gras on 03/01/2020.
//  Copyright © 2020 RodrigoGras. All rights reserved.
//

import Foundation
import Moya

public enum Reddit {
    case best
}

extension Reddit: TargetType {
    public var baseURL: URL { return URL(string: "https://www.reddit.com/r")! }
    public var path: String {
        switch self {
        case .best:
            return "/best"
        }
    }
    public var method: Moya.Method {
        return .get
    }
    public var task: Task {
        return .requestPlain
    }
    public var validationType: ValidationType {
        switch self {
        case .best:
            return .successCodes
        }
    }
    public var sampleData: Data {
        switch self {
        case .best:
            return "{}".data(using: String.Encoding.utf8)!
        }
    }
    public var headers: [String: String]? {
        return nil
    }
}

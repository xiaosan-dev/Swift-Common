//
//  APITarget.swift
//  Swift-Common
//
//  Created by wang xiaolong on 2020/6/17.
//  Copyright © 2020 xiaosan. All rights reserved.
//

import Foundation
import Moya

enum APITarget {
    case update
}

extension APITarget: TargetType {

    var baseURL: URL {
        return URL(string: "")!
    }

    var path: String {
        return ""
    }

    var method: Moya.Method {
        return .get
    }

    var headers: [String: String]? {
        return nil
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        let parameters: [String: Any] = [:]
        switch self {
        case .update:
            return .requestParameters(parameters: parameters,
                                      encoding: URLEncoding.default)
        }
    }

}

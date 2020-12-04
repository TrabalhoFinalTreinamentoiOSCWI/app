//
//  SearchSuccessMockApiNetworkService.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

open class SearchSuccessMockApiNetworkService: NetworkServiceInterface {
    
    public func get<T>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult) where T : Decodable {
        let response = [Category(id: 1, path: "pasta", name: "Massa", image: "https://pasta.png")]
        success(response as! T)
    }
}

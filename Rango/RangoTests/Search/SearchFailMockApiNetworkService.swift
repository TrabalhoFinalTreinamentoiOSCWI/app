//
//  SearchFailMockApiNetworkService.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

open class SearchFailMockApiNetworkService: NetworkServiceInterface {
    
    public func get<T>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult) where T : Decodable {
        let message = "Error Message"
        error(message)
    }
}

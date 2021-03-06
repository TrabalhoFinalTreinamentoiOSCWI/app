//
//  MenuFailMockApiNetworkService.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 03/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

open class MenuFailMockApiNetworkService: NetworkServiceInterface {
    
    public func get<T>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult) where T : Decodable {
        let message = "Error Message"
        error(message)
    }
}

//
//  MockApiNetworkService.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 02/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

open class ProfileSuccessMockApiNetworkService: NetworkServiceInterface {
    
    open func get<T>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult) where T : Decodable {
        let response = User(id: 1, name: "Rhian", email: "rhian@gmail.com", bio: "mock bio", image: "https://image.png")
        success(response as! T)
    }

}

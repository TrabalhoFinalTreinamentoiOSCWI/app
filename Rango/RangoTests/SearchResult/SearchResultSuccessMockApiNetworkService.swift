//
//  SearchResultSuccessMockApiNetworkService.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

open class SearchResultSuccessMockApiNetworkService: NetworkServiceInterface {
    
    public func get<T>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult) where T : Decodable {
        let response = [Recipe(id: 1, userId: 1, name: "Rhian", bio: "mock bio", dificulty: Dificult.easy, time: 1, rating: 1, image: "image", ingredients: [""], steps: [""])]
        success(response as! T)
    }
}

//
//  NetworkServiceInterface.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation


public protocol NetworkServiceInterface {
    
    typealias SuccessResult<T: Decodable> = (T) -> Void
    typealias ErrorResult = (String) -> Void
    
    func get<T: Decodable>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult)
    
}

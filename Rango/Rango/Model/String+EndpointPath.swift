//
//  String+EndpointPath.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

extension String {
    
    func findEndpointByPath(path: String) -> Endpoint? {
        let categories = [Endpoint.salads, Endpoint.meats, Endpoint.pasta, Endpoint.fish, Endpoint.snack, Endpoint.cakes]
        for category in categories {
            if category.categoryValue == path {
                return category
            }
        }
        return nil
    }
}

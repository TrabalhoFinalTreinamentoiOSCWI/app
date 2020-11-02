//
//  Api.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

typealias SuccessResult<T: Decodable> = (T) -> Void
typealias ErrorResult = (String) -> Void

class Api {
    
    let baseUrl: String = "http://localhost:3000"
    
    func get<T: Decodable>(endpoint: Endpoint, success: @escaping SuccessResult<T>, error: @escaping ErrorResult) {
        let completeUrl = "\(baseUrl)/\(endpoint.url)"
        
        guard let url = URL(string: completeUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                //TODO: rhian.costa - 02/11/20 - introduce validate error
                return
            }
            
            guard let data = data else {
                //TODO: rhian.costa - 02/11/20 - introduce invalid data tratament
                return
            }
            
            let decodificator = JSONDecoder()
            
            do {
                let dadosConvertidos = try decodificator.decode(T.self, from: data)
                success(dadosConvertidos)
            } catch {
                //TODO: rhian.costa - 02/11/20 - introduce exception tratament
                print(error)
            }
        }.resume()
    }
}

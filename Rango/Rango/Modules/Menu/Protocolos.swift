//
//  Protocolos.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

protocol MenuTableViewType {
    func setMenuOptions(with values: [Menu])
}

protocol MenuPresenterType {
    func screenDidLoad()
    // TODO: adicionar funcao para clique em opcao
}

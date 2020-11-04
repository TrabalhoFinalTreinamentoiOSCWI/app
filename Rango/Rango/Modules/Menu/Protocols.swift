//
//  Protocolos.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

protocol MenuTableViewType {
    func presentTable(_ tela: UIViewController)
    func updateList()
}

protocol MenuPresenterType {    
    func screenDidLoad()
    // TODO: adicionar funcao para clique em opcao
}

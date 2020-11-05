//
//  FavoriteTableViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class FavoriteTableViewController: UITableViewController {
    
    var recipes: [Recipe] = [Recipe(id: 1, userId: 1, name: "Salada de Macarrão com Atum", bio: "Uma deliciosa salada de macarrão com atum para você apreciar.", dificulty: .intermediate, time: 30, rating: 4, image: "https://cdn.discordapp.com/attachments/576875163686010911/771877616339648582/unknown.png", ingredients: [
        "250 g de macarrão parafuso",
        "1/2 cebola bem picadinha",
        "2 tomates sem sementes cortados em cubinhos",
        "1 lata de milho verde",
        "2 latas de atum ralado sem o óleo da conserva",
        "2 colheres (sopa) de mostarda",
        "1 xícara de maionese",
        "sal, pimenta-do-reino e cheiro verde a gosto"
    ], steps: [
        "Em uma panela ferva a água para cozinhar o macarrão.",
        "Cozinhe da forma tradicional deixando o macarrão al dente.",
        "Enquanto isso prepare a mistura para temperar o macarrão.",
        "Coloque em uma vasilha grande as 2 latas de atum, a cebola, os tomates, o milho, a maionese, a mostarda, sal, pimenta do reino e o cheiro verde.",
        "Cuidadosamente misture bem.",
        "Depois que o macarrão estiver cozido, colque em um refratário e adicione a mistura mexendo levemente para não quebrar o macarrão.",
        "Quando a mistura estiver bem incorporada ao macarrão leve para a geladeira por no mínimo 1 hora e meia.",
        "Eu prefiro fazer com de um dia para o outro,pois o sabor fica bem mais apurado.",
        "Sirva como prato principal em dias quentes acompanhado de um frango grelhado."
    ])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(resource: R.nib.recipeTableViewCell), forCellReuseIdentifier: "favorite-cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension FavoriteTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favorite-cell", for: indexPath) as! RecipeTableViewCell
        
        cell.config(recipes[0])
        return cell
    }
}

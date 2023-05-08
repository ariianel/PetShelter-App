//
//  CartManager.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 24/02/2023.
//

import Foundation

class CartManager : ObservableObject {
    @Published private(set) var products: [Animals] = []
    @Published private(set) var total: Int = 0
    
    //Fonction qui permet d'ajouter une carte
    func addToCart(product : Animals) {
        products.append(product)
        total += product.price
    }
    //Fonction qui permet de retirer une carte
    func removeFromCart(product : Animals) {
        //Il faut que l'id du produit entré dans la fonction soit différent de celui qu'on a
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}

//
//  CartView.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 24/02/2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    animal in
                    ProductRow(animal: animal)
                }
                
                HStack{
                    Text("Your cart total is")
                        .foregroundColor(Color.black)
                        .padding(.horizontal)
                    Spacer()
                    Text("\(cartManager.total).00€")
                        .bold()
                        .foregroundColor(Color.black)
                        .padding(.horizontal)
                }.padding(.top)
            } else{
                Text("Your cart is empty")
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}

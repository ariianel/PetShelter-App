//
//  Info.swift
//  PetShelterApp
//
//  Created by Ariane Luc on 03/02/2023.
//

/**/

import SwiftUI

enum AnimalType {
    case dog
    case cat
}

struct Animals: Identifiable {
    let id = UUID()
    let image : String
    let prenom : String
    let race : String
    let date : String
    let price : Int
    let weight : String
    let type: AnimalType
    let description : String
}

struct AnimalsList {
    
    static let infoAnimals = [
        
        Animals(image: "Photo_1",
                prenom: "Gary",
                race: "Yorkshire Terrier",
                date: "3 years",
                price: 110,
                weight: "10kg",
                type: AnimalType.dog,
                description: "Gary is a 3-year-old Yorkshire Terrier who is full of personality. He loves to play and cuddle, and he's always eager to meet new people. Gary is up-to-date on all of his vaccinations and is ready to find his forever home."),
        
        Animals (image: "Photo_2",
                prenom: "Peach",
                race: "half-breed",
                date: "2.5 years",
                price: 250,
                 weight: "10kg",
                type:AnimalType.cat,
                 description: "Peach is a 2.5-year-old half-breed cat who is as sweet as her name suggests. She's a gentle and loving cat who gets along great with both people and other animals. Peach is already litter box trained and would make a wonderful addition to any family."),
        
        Animals (image: "Photo_3",
                prenom: "Nini",
                race: "British Longhaire",
                date: "2 months",
                price:68,
                weight: "10kg",
                type:AnimalType.cat,
                 description: "Nini is a 2-month-old British Longhaired cat who is just starting to discover the world around her. She's a playful and curious kitten who loves to explore her surroundings. Nini will need plenty of love and attention as she grows, but she'll reward her owners with years of loyal companionship. Nini is already litter box trained and ready for her new home."),
        
        Animals (image: "Photo_4",
                prenom: "Buggy",
                race: "Jack Russel",
                date: "4 months",
                price:90,
                weight: "10kg",
                type:AnimalType.dog,
                 description: "Buggy is a 4-month-old Jack Brussel who is full of energy and spunk. He loves to play and run around, and he's always eager to learn new tricks. Buggy would be perfect for an active family who can keep up with his high energy levels."),
        
        Animals (image: "Photo_5",
                prenom: "Will",
                race: "Samoyed",
                date: "1.5 years",
                price:80,
                weight: "10kg",
                type:AnimalType.dog,
                 description: "The kindest Samoyed we've ever met. Likes to play with balls, is friends with other animals.Despite the white color, he loves rain and puddles."),
        
        Animals (image: "Photo_6",
                prenom: "Kiwi",
                race: "Yorkshire Terrier",
                date: "1 year",
                price:100,
                weight: "10kg",
                type:AnimalType.dog,
                 description: "Kiwi is a 1-year-old Yorkshire Terrier who is a little ball of energy. She's always on the go and loves to play, but she's also happy to cuddle up with her owners for a nap. Kiwi is a healthy and happy dog who is ready to find her forever home."),
        
    ]
}

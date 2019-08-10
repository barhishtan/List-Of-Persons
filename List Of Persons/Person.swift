//
//  Person.swift
//  List Of Persons
//
//  Created by Artur Sokolov on 10/08/2019.
//  Copyright © 2019 Artur Sokolov. All rights reserved.
//

struct Person {
    
    // MARK: - Public Properties
    let name: String
    let surname: String
    let phone: String
    let eMail: String
    
    // MARK: - Arrays of default data
    static private let names = ["Arnold",
                                "Bill",
                                "Maggy",
                                "Сarrie",
                                "Joseph",
                                "Jonny",
                                "Angelina"]
    static private let surnames = ["Schwarzenegger",
                                   "Murray",
                                   "Gyllenhaal",
                                   "Fisher",
                                   "Benavidez",
                                   "Jones",
                                   "Jolie"]
    static private let phones = ["+79001111111",
                                 "+79002222222",
                                 "+79003333333",
                                 "+79004444444",
                                 "+79005555555",
                                 "+79006666666",
                                 "+79007777777"]
    static private let eMails = ["gorilla@mail.ru",
                                 "iceberg@icemail.ice",
                                 "darklord@darkness.dark",
                                 "jedi@gmail.com",
                                 "fighter@fightmail.fight",
                                 "yamaha@yandex.ya",
                                 "bigboss@icloud.com"]
    
    // MARK: - Static Methods
    static func createPersons() -> [Person] {
        
        let names = self.names.shuffled()
        let surnames = self.surnames.shuffled()
        let phones = self.phones.shuffled()
        let eMails = self.eMails.shuffled()
        var arrayOfPersons = [Person]()
        
        for ((name, surname), (phone, eMail))
            in zip(zip(names, surnames),
                   zip(phones, eMails)) {
                let person = Person(name: name,
                                    surname: surname,
                                    phone: phone,
                                    eMail: eMail)
                arrayOfPersons.append(person)
        }
        
        return arrayOfPersons
    }
    
}


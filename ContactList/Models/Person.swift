//
//  Contact.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 17.04.2023.
//



struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
   static func getContact() -> [Person] {
       let data = DataStore()
       let names = data.names.shuffled()
       let surnames = data.surnames.shuffled()
       let phones = data.phones.shuffled()
       let emails = data.email.shuffled()
       let shuffledData = zip(zip(names, surnames), zip(phones, emails))
       return shuffledData.map{
           Person(name: $0.0.0, surname: $0.0.1, phone: $0.1.0, email: $0.1.1)}
    }
    

    
        
        
    
}

//
//  Person.swift
//  PeopleProject
//
//  Created by Valeriya on 14.06.2021.
//

struct Person {
    let name: String = DataManager().names.randomElement() ?? "unknown"
    let surname: String = DataManager().surnames.randomElement() ?? "unknown"
    let email: String = DataManager().emails.randomElement() ?? "unknown"
    let phone: String = DataManager().phones.randomElement() ?? "unknown"
    
    var title : String {
        "\(name) \(surname) \(email) \(phone)"
    
    }
}

extension Person {
    static func getPersonList() -> [String] { [
         Person().title,
         Person().title,
         Person().title,
         Person().title
        ]
    }
}

class DataManager {
    let names: [String] = ["Igor", "Eugenij", "Anna", "John"]
    let surnames: [String] = ["Smith", "Brown", "Pual", "Krasnikof"]
    let emails: [String] = ["gg@l.ru", "kk@jj.ru", "jj@h.ru", "gg@mail.ru"]
    let phones: [String] = ["+18738", "+786475", "+87484903", "+723583030"]
}

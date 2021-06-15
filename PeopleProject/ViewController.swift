//
//  ViewController.swift
//  PeopleProject
//
//  Created by Valeriya on 14.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let personList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate {
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personCell",
            for: indexPath
        )
        
//        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(Person().name) \(Person().surname)"
        content.secondaryText = "\(Person().phone)"
        
        cell.contentConfiguration = content
        return cell
    }
}


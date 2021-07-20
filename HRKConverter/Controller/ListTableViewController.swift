//
//  ListTableViewController.swift
//  HRKConverter
//
//  Created by David Klaric on 07.05.2021..
//

import UIKit

class ListTableViewController: UITableViewController {

    let currency = getCurrency()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Currency List"
    }

    // how many rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return currency.count
    }

    // what goes in each row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? ListTableViewCell {
            
            cell.currencyType.text = currency[indexPath.row].type
            cell.currencyBuy.text = String(format: "%.2f", currency[indexPath.row].buy)
            cell.currencySell.text = String(format: "%.2f", currency[indexPath.row].sell)
            cell.currencyMiddle.text = String(format: "%.2f", currency[indexPath.row].mid)
        
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

}

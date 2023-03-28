//
//  ViewController.swift
//  ProjectClosureFive
//
//  Created by Ana Paula Silva de Sousa on 26/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var arraypizza: Pizza?
    
    let request = RequestPizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        myRequest()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MyCustomCellXIB", bundle: nil), forCellReuseIdentifier: "cellXIB")
    }
    
    func myRequest() {
        request.delegate = self
        request.requestPizza { arrayPizza in
        }
    }
}

extension ViewController: RequestDelegate {
    func finishRequest(arrayPizza: Pizza?) {
        self.arraypizza = arrayPizza
        self.tableView.reloadData()
    }
    
    func erroRequest() {
        print ("erro a resquest")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraypizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? MyCustomCellXIB {
            cell.setupXIB(pizza: arraypizza?[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let priceView = self.storyboard?.instantiateViewController(identifier: "price") as? PriceViewController {
            priceView.pricePizza = arraypizza?[indexPath.row]
            self.present(priceView, animated: true)
        }
    }
}

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
    }
    
    func setupTableView() {
        request.requestPizza { pizza in
            self.arraypizza = pizza
            self.tableView.reloadData()
        }
    }
}

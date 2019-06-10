//
//  ViewController.swift
//  Accelrometron
//
//  Created by Salvador Marquez on 6/7/19.
//  Copyright © 2019 Citsa Digital. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of cells
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "parallexCell" , for: indexPath) as? ParallexCellTableViewCell else {return UITableViewCell() }
        cell.configureCell(withImage: imageArray[indexPath.row]!, andDescription: nameArray[indexPath.row])
        return cell
    }


}


//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Pabitra Ranjan Sahoo on 10/11/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpson : [Simpson] = [Simpson(name: "Homer Simpson", 
                                         job: "Nuclear Safety",
                                         image: "marge"),
                                 Simpson(name: "Marge Simpson", 
                                         job: "House Wife",
                                         image: "homer"),
                                 Simpson(name: "Bart Simpson", 
                                         job: "Student",
                                         image: "bart"),
                                 Simpson(name: "Lisa Simpson", 
                                         job: "Student",
                                         image: "lisa"),
                                 Simpson(name: "Maggie Simpson", 
                                         job: "Baby",
                                         image: "maggie")]
    var choosenSimpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = choosenSimpson
        }
    }
}


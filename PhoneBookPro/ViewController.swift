//
//  ViewController.swift
//  PhoneBookPro
//
//  Created by Runlin Liu on 12/8/23.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITableViewDataSource, OpenEditorDelegate {

    
    @IBOutlet weak var tblView: UITableView!
    
    var names: [String] = ["n1", "n2"]
    var numbers: [String] = ["123", "456"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Name: \(names[indexPath.row]), number: \(numbers[indexPath.row])"
        
        return cell
    }
    
    @IBAction func openEditor(_ sender: Any) {
        performSegue(withIdentifier: "openEditorSegue", sender: self)
    }
    
//    OpenEditorDelegate
    func sendContact(name: String, number: String) {
        names.append(name)
        numbers.append(number)
        
        print("Received: \(name), \(number), cellLength: \(name.count)")
        tblView.reloadData()
    }
    
//    prepare()
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "openEditorSegue"){
            let secondController = segue.destination as! EditorViewController
            secondController.openEditorDelegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


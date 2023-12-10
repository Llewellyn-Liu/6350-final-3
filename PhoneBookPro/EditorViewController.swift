//
//  EditorViewController.swift
//  PhoneBookPro
//
//  Created by Runlin Liu on 12/8/23.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet weak var numberTxt: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    
    var openEditorDelegate: OpenEditorDelegate?
    
    @IBAction func addContact(_ sender: Any) {
        guard let name = nameTxt.text else {return}
        guard let number = numberTxt.text else {return}
        openEditorDelegate?.sendContact(name: name, number: number)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

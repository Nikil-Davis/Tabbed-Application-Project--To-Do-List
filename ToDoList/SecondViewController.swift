//
//  SecondViewController.swift
//  ToDoList
//
//  Created by nikil davis on 21/09/16.
//  Copyright © 2016 nikil davis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var taskNmOutlet: UITextField!
    @IBOutlet weak var taskDescOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //events
    @IBAction func AddNewTskAction(_ sender: AnyObject) {
        tskMgr.addTask(taskNmOutlet.text!, desc: taskDescOutlet.text!)
        self.view.endEditing(true)
        taskNmOutlet.text = ""
        taskDescOutlet.text = ""
        self.tabBarController?.selectedIndex = 0
    }
   //IOS touch function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //uitextfielddelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
//    func endEditing(force: Bool) -> Bool
//    {
//        return true
//    }
}


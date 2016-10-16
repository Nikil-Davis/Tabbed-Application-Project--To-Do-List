//
//  FirstViewController.swift
//  ToDoList
//
//  Created by nikil davis on 21/09/16.
//  Copyright © 2016 nikil davis. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tblOutlet: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//reloading tasks
    override func viewWillAppear(_ animated: Bool) {
        tblOutlet.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//uitableviewDatasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      return tskMgr.tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        cell.textLabel?.text = tskMgr.tasks[(indexPath as NSIndexPath).row].name
        cell.detailTextLabel?.text = tskMgr.tasks[(indexPath as NSIndexPath).row].desc
        return cell
    }
//uitableviewdelegate
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if (editingStyle == UITableViewCellEditingStyle.delete)
        {
            tskMgr.tasks.remove(at: (indexPath as NSIndexPath).row)
            tblOutlet.reloadData()
        }
    }
    
}


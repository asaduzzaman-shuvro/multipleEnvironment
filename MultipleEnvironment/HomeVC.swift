//
//  ViewController.swift
//  MultipleEnvironment
//
//  Created by Asaduzzaman Shuvro on 1/17/18.
//  Copyright © 2018 Asaduzzaman Shuvro. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var tableView:  UITableView!
    var datas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView = UITableView(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.estimatedSectionFooterHeight = 0
        self.view.addSubview(tableView)
        
        if let infoDic = Bundle.main.infoDictionary {
            for (key,valu) in infoDic {
                
                if let strValue = valu as? String {
                    datas.append("\(key) --> \(strValue)")
                }
                
            }
            tableView.reloadData()
//            print(infoDic.keys)
//            print(infoDic.values)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
            cell?.textLabel?.text = datas[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }


}


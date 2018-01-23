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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView = UITableView(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height - 80), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 44
        tableView.estimatedSectionFooterHeight = 0
        self.view.addSubview(tableView)
        
        
        let button = UIButton(frame: CGRect(x: 0, y: self.view.frame.height - 50, width: self.view.frame.width, height: 50))
        button.backgroundColor = UIColor.green
        button.setTitle(AppConfig.appName, for: .normal)
        button.addTarget(self, action: #selector(reloadTableView), for: .touchUpInside)
        self.view.addSubview(button)
        
        reloadTableView()
        
        
    }
    
    func getValue(for key: String) -> String? {
        
        return (Bundle.main.infoDictionary?[key] as? String)?.replacingOccurrences(of: "\\", with: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reloadTableView() {
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
            cell?.textLabel?.text = AppConfig.configs[indexPath.row].names
            cell?.detailTextLabel?.text = AppConfig.configs[indexPath.row].value
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppConfig.configs.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }


}


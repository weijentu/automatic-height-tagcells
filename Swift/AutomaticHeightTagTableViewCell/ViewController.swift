//
//  ViewController.swift
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-09-21.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    private let dataSource = { () -> [Array<AHTag>] in
        let URL = Bundle.main.url(forResource: "TagGroups", withExtension: "json")!
        do {
            let data = try Data(contentsOf: URL)
            let object = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            guard let groups = object as? [[[String : Any]]] else {
                fatalError("Not in an expected form of [[[String : Any]]]")
            }
            return groups.map({ return $0.map({ AHTag(dictionary: $0) }) })
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TAGS"
        
        let nib = UINib(nibName: "AHTagTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.dataSource[section][0].category
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        self.configureCell(cell, atIndexPath: indexPath)
        return cell
    }
    
    private func configureCell(_ object: AnyObject, atIndexPath indexPath: IndexPath) {
        if object.isKind(of: AHTagTableViewCell.classForCoder()) == false {
            abort()
        }
        let cell = object as! AHTagTableViewCell
        let tags = self.dataSource[indexPath.section]
        cell.label.setTags(tags)
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let v = view as! UITableViewHeaderFooterView
        v.textLabel?.textColor = UIColor.darkGray
    }
    
    // MARK: - UIViewControllerTransitionCoordinator
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate(alongsideTransition: { (context) in
            self.tableView.reloadData()
        }) { (context) in
            
        }
    }
}


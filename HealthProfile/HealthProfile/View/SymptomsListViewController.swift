//
//  SymptomsListViewController.swift
//  HealthProfile
//
//  Created by Gimin Moon on 2/17/18.
//  Copyright © 2018 Gimin Moon. All rights reserved.
//

import UIKit

class SymptomsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)
    let mediccontroller = APIMedicController()
    var symptoms : [String]?
    var filteredSymptoms = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Symptoms"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        print(DataModel.sharedInstance.symptoms.count)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredSymptoms.count
        }
        return (DataModel.sharedInstance.symptoms.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? SymptomsCell else{
            return UITableViewCell()
        }
        let symptom : String
        if(isFiltering())
        {
            symptom = filteredSymptoms[indexPath.row]
        }
        else{
            symptom = DataModel.sharedInstance.symptoms[indexPath.row]
        }
        cell.nameField.text = symptom
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return self.searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredSymptoms = DataModel.sharedInstance.symptoms.filter({( symptom : String) -> Bool in
            return symptom.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }

    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
  
    
    
}

extension SymptomsListViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}

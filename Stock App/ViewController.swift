//
//  ViewController.swift
//  Stock App
//
//  Created by Thobio Joseph on 27/05/21.
//

import UIKit

class SearchTableViewController: UITableViewController{
    
    private lazy var searchController:UISearchController = {
       let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Enter a company name or symbol"
        sc.searchBar.autocapitalizationType = .allCharacters
       return sc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationBar()
    }
    
    private func setUpNavigationBar(){
        navigationItem.searchController = searchController
    }

}

extension SearchTableViewController: UISearchResultsUpdating,UISearchControllerDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}

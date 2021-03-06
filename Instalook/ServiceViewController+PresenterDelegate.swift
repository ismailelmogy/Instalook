//
//  SalonServiceViewController+PresenterDelegate.swift
//  Instalook
//
//  Created by Amer Shaker on 6/16/19.
//  Copyright © 2019 instalook. All rights reserved.
//

import UIKit

extension ServiceViewController: ServiceView {
    
    func showIndicator() {
        spinner.startAnimating()
    }
    
    func hideIndicator() {
        spinner.stopAnimating()
    }

    func addServiceSuccess() {
    }
    
    func getAllServicesSuccess() {
        tableView.reloadData()
    }
    
    func deleteServiceSuccess(indexPath: IndexPath) {
        // Also remove that row from the table view with an animation
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    func showError(error: String) {
        let alertController = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}

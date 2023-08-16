//
//  ViewController.swift
//  Today Apps
//
//  Created by Rizky Haris Risaldi on 15/08/23.
//

import UIKit

class ReminderListViewController: UICollectionViewController {
    
    
    var dataSource: DataSource!
    
    var reminders : [Reminder] = Reminder.sampleData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set list layout
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        //Set cell custom registation
        let cellRegistration = UICollectionView.CellRegistration(handler: cellRegistrationHandler)
        
        dataSource = DataSource(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, itemIdentifier: Reminder.ID) in
            return collectionView.dequeueConfiguredReusableCell(
                using: cellRegistration, for: indexPath, item: itemIdentifier)
        }
        
        // set snapshot for live view
        updateSnapshot()
        
        //Set data source
        collectionView.dataSource = dataSource
    }
    
    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        //configuration for collection layout
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}


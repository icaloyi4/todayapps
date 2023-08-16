//
//  ReminderListController+action.swift
//  Today Apps
//
//  Created by Rizky Haris Risaldi on 15/08/23.
//

import Foundation

extension ReminderListViewController {
    @objc func didPressDonButton(_ sender : ReminderDoneButton){
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}

//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //these methods we just implemented are a part of the UITableViewDataSource protocol
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 //this func is usually dynamic bc we want number of rows to change
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell
        //!as is a downcast bc we tell compiler to a specific thing
        
        cell.noteTitleLabel.text = "Title"
        cell.noteModificationTimeLabel.text = "note's modification time"
        return cell
        //what cell do i display at this row
        //  updating that cell to look how we want, then returning that cell to the table view. To help us answer that question, the table view tells us the indexPath.
    }
    
}

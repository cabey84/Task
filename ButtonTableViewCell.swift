//
//  ButtonTableViewCell.swift
//  Task2
//
//  Created by Chandi Abey  on 8/25/16.
//  Copyright © 2016 Chandi Abey . All rights reserved.
//

import UIKit

class ButtonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var itemLabel: UILabel!
    
    
    @IBOutlet weak var checkButton: UIButton!
    
    
   
    @IBAction func checkButtonTapped(sender: AnyObject) {
    }

   
/*
     Custom Table View Cell
     
     
    
     
         note: Use the image edge inset to shrink the image to not fill the entire height of the content view
     Remove text from the button, but add a image of an empty checkbox
     note: Use the 'complete' and 'incomplete' image assets included in the project
     Create an IBOutlet for the label named primaryLabel
     Create an IBOutlet for the button named button
     Create an IBAction for the button named buttonTapped which you will implement using a custom protocol in the next step
     Implement the 'updateWith' pattern in an extension on the ButtonTableViewCell class.
     
     Add an updateButton(isComplete: Bool) function that updates the button's image to the desired image based on the isComplete Bool
     Add an extension to ButtonTableViewCell at the bottom of the class file
     Add a function updateWithTask(task: Task) that updates the label to the name of the task, and calls the updateButton(isComplete: Bool) function to update the image
     Update the cellForRowAtIndexPath to call updateWithTask(task: Task) instead of setting the text label directly
     Custom Protocol
     
     Write a protocol for the ButtonTableViewCell to delegate handling a button tap to the TaskListTableViewController, adopt the protocol, and use the delegate method to mark the task as complete and reload the cell.
     
     Add a protocol named ButtonTableViewCellDelegate to the bottom of the class file
     Define a required buttonCellButtonTapped(sender: ButtonTableViewCell) function
     Add an optional delegate property on the ButtonTableViewCell, require the delegate to have adopted the delegate protocol
     note: var delegate: ButtonTableViewCellDelegate?
     Update the buttonTapped IBAction to check if a delegate is assigned, and if so, call the delegate protocol function
     Adopt the protocol in the TaskListTableViewController class
     Implement the buttonCellButtonTapped delegate method to capture the Task as a variable, toggle task.isComplete, save to persistent storage, and reload the table view
 
 
 
 */
    
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

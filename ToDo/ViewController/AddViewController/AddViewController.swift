//
//  AddViewController.swift
//  ToDo
//
//  Created by PABLO HERNANDEZ JIMENEZ on 19/12/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate: class {
    func addViewController(_ vc: AddViewController, didEditTask task: Task)
}

class AddViewController: UIViewController {

    @IBOutlet weak var viewBack:UIView!
    @IBOutlet weak var textField:UITextField!
    @IBOutlet weak var saveButton:UIButton!
    internal var task: Task!
    weak var delegate: AddViewControllerDelegate!
    
    convenience init(task: Task?) {
        self.init()
        if task == nil {
            self.task = Task()
            self.task.id = UUID().uuidString
            self.task.name = ""
            self.task.isDone = false
        }
        else {
            self.task = task
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.8) {
            self.view.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewBack.layer.cornerRadius = 8.0
        viewBack.layer.masksToBounds = true
        
        saveButton.layer.cornerRadius = 8.0
        saveButton.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed() {
        self.task.name = textField.text
        delegate.addViewController(self, didEditTask: task)
    }
}

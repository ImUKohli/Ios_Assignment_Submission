//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by student on 05/03/24.
//

import UIKit

class MiddleViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    var eventNumber:Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        addEvent(from: "viewDidLoad")
    }
    
    func addEvent(from:String){
        if let existingText = label.text{
            label.text = "\(existingText)\n Event number \(eventNumber) was \(from) "
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

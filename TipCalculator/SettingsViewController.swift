//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Michael Zetune on 11/27/18.
//  Copyright © 2018 Michael Zetune. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSelector: UISegmentedControl!
    @IBOutlet weak var defaultTipHelpText: UILabel!
    
    let defaults = UserDefaults.standard
    let tipPercentages = [0.18, 0.2, 0.25]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultTipSelector.selectedSegmentIndex = defaults.integer(forKey: "defaultTipAmountIndex")
        defaultTipHelpText.text = "On launching the Tip Calculator again in the future, the starting tip amount will be \(tipPercentages[defaultTipSelector.selectedSegmentIndex])%"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func defaultTipChanged(_ sender: Any) {
        
        let newTipAmountIndex = defaultTipSelector.selectedSegmentIndex
        defaults.set(newTipAmountIndex, forKey: "defaultTipAmountIndex")
        defaults.synchronize()
        
        defaultTipHelpText.text = "On launching the Tip Calculator again in the future, the starting tip amount will be \(tipPercentages[newTipAmountIndex])%"
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

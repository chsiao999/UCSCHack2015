//
//  MarineBioViewController.swift
//  HackUCSC2015
//
//  Created by Arjun Gopisetty on 1/10/15.
//  Copyright (c) 2015 HackUCSC2015Team. All rights reserved.
//

import UIKit

let bmeasurement_time = "bmeasurement_time"
let bmeasurement_date = "bmeasurement_date"
let bsurface_temperature = "bsurface_temperature"
let bseawater_depth = "bseawater_depth"
let bseawater_visibility = "bseawater_visibility"
let bseawater_salinity = "bseawater_salinity"
let bplankton_sample = "bplankton_sample"//number
let bplankton_notes = "bplankton_notes"//actually species
let bseawater_color = "bseawater_color"

class MarineBioViewController: UIViewController {

    @IBOutlet var TEMP: UITextField!
    @IBOutlet var VISIB: UITextField!
    @IBOutlet var DEPTH: UITextField!
    @IBOutlet var SALIN: UITextField!
    @IBOutlet var PLANKNUM: UITextField!
    @IBOutlet var PLANKSPEC: UITextField!
    
    // water color options
    @IBOutlet var BROWN: UIButton!
    @IBOutlet var BLUE: UIButton!
    @IBOutlet var RED: UIButton!
    @IBOutlet var GREEN: UIButton!
    @IBOutlet var YELLGREEN: UIButton!
    @IBOutlet var BLUGREEN: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gatherAllData2(){
        var cDictionary = [String : String]()
        
        cDictionary[bsurface_temperature] = TEMP.text
        cDictionary[bseawater_visibility] = VISIB.text
        cDictionary[bseawater_depth] = DEPTH.text
        cDictionary[bseawater_salinity] = SALIN.text
        cDictionary[bplankton_sample] = PLANKNUM.text
        cDictionary[bplankton_notes] = PLANKSPEC.text
        //cDictionary[] = .text
        //cDictionary[] = .text

        
        sharedData().setObject(cDictionary, forKey: "biology")
        println(sharedData())
    }
    
    @IBAction func nextButtonHit2(sender: UIButton) {
        gatherAllData2()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
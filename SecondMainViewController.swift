//
//  SecondMainViewController.swift
//  Authorize
//
//  Created by Praneeth Kandula on 6/26/17.
//  Copyright © 2017 Praneeth Kandula. All rights reserved.
//

import UIKit

class SecondMainViewController: UIViewController {

    
    @IBOutlet weak var ScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Initialize using Unique ID for the View
        let V1 = self.storyboard?.instantiateViewController(withIdentifier: "V1") as UIViewController!
        //Add initialized view to main view and its scroll view and also set bounds
        self.addChildViewController(V1!)
        self.ScrollView.addSubview((V1?.view)!)
        V1?.didMove(toParentViewController: self)
        V1?.view.frame = ScrollView.bounds
        //Create frame for the view and define its urigin point with respect to View 1 - We dont need it here
        
        //Initialize using Unique ID for the View
        let V2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as UIViewController!
        //Add initialized view to main view and its scroll view also set bounds
        self.addChildViewController(V2!)
        self.ScrollView.addSubview((V2?.view)!)
        V2?.didMove(toParentViewController: self)
        V2?.view.frame = ScrollView.bounds
        
        //Create frame for the view and define its urigin point with respect to View 1
        var V2Frame: CGRect = V2!.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2?.view.frame = V2Frame
        
        //Initialize using Unique ID for the View
        let V3 = self.storyboard?.instantiateViewController(withIdentifier: "V") as UIViewController!
        //Add initialized view to main view and its scroll view also set bounds
        self.addChildViewController(V3!)
        self.ScrollView.addSubview((V3?.view)!)
        V3?.didMove(toParentViewController: self)
        V3?.view.frame = ScrollView.bounds
        
        //Create frame for the view and define its urigin point with respect to View 1
        var V3Frame: CGRect = V3!.view.frame
        V3Frame.origin.x = 2 * self.view.frame.width
        V3?.view.frame = V3Frame
        
        //The width is set here as we are dealing with Horizontal Scroll
        //The Width is x3 as there are 3 sub views in all
        self.ScrollView.contentSize = CGSize(width: (self.view.frame.width) * 3, height: (self.view.frame.height))
        
        //The offset values are for telling where the scroll view sees its x and y point as origin
        //try setting the value to 2, and 3 to feel the difference----this value here
        self.ScrollView.contentOffset = CGPoint(x: (self.view.frame.width) * 0, y: (self.view.frame.height))
        //hi
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigatio

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

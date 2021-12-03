//
//  LauchViewController.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 24/11/2021.
//

import UIKit

class LauchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green

        // Do any additional setup after loading the view.
    }
    

    @IBAction func lauchApp(_ sender: Any) {
        let vc = BeginConfig.makeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
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

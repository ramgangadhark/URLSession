//
//  ViewController.swift
//  URLSession
//
//  Created by RAMA GANGADHAR KANDA on 28/12/20.
//commit and push

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnTapOfBtn(_ sender: UIButton)
    {
        let session = URLSession.shared
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        let task = session.dataTask(with: url!, completionHandler: { data, response, error in
            
            print(response!)
                        
                        // Check if an error occured
                        if error != nil {
                            // HERE you can manage the error
                            print(error!)
                            return
                        }
                        
                        // Serialize the data into an object
                        do {
                            let json = try JSONDecoder().decode([PostElement].self, from: data! )
                                //try JSONSerialization.jsonObject(with: data!, options: [])
                            print(json)
                        } catch {
                            print("Error during JSON serialization: \(error.localizedDescription)")
                        }
                        
                    })
                    task.resume()
    }
    

}


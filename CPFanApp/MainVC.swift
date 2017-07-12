//
//  ViewController.swift
//  CPFanApp
//
//  Created by Deepthi on 05/07/17.
//  Copyright © 2017 Deepthi. All rights reserved.
//

import UIKit

class MainVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var CPModels = [CPModel]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let CP1 = CPModel(imageURL:"https://images.genius.com/bc29e1ff20b4931dd9919f2ab5252b0e.1000x1000x1.jpg", videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/nfs8NYg7yQM?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>", videotitle: "Attention")
        
        let CP2 = CPModel(imageURL:"https://1.bp.blogspot.com/-wlzzBFh7UcM/WEcTVj1krZI/AAAAAAAABpw/Ed9-f9NyyJUoL9YARVbQ2jgCf2DxTKhrQCLcB/s1600/we-dont-talk-anymore-charlie-puth.jpg ", videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/3AtDnEC4zak?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>", videotitle: "We Dont TAlk Anymore")
        
        let CP3 = CPModel(imageURL:"https://www.freebirdnotes.com/uploads/prod_gallery/charlieputh_onecallaway.jpg", videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/BxuY9FET9Y4?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>", videotitle: "One Call Away")
        
        let CP4 = CPModel(imageURL:"https://upload.wikimedia.org/wikipedia/en/a/a9/Charlie_Puth_-_Dangerously_%28Official_song_cover%29.jpg", videoURL: " <div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/TBXQu8ORnBQ?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>", videotitle: "Dangerously ")
        
        let CP5 = CPModel(imageURL:"https://i1.sndcdn.com/artworks-000118127375-ncecsz-t500x500.jpg", videoURL: " <div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/RgKAFK5djSk?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>", videotitle: " See You Again")
        
        
        
        CPModels.append(CP1)
        CPModels.append(CP2)
        CPModels.append(CP3)
        CPModels.append(CP4)
        CPModels.append(CP5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CPViewCell", for: indexPath) as? CPViewCell{
            
            let CPModel = CPModels[indexPath.row]
        
            cell.updateUI(cpmodel: CPModel)
       
            return cell
        } else {
            
        
        return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CPModels.count
    }
    
}

    
   

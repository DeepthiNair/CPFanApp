//
//  CPViewCell.swift
//  CPFanApp
//
//  Created by Deepthi on 05/07/17.
//  Copyright © 2017 Deepthi. All rights reserved.
//

import UIKit

class CPViewCell: UITableViewCell {

    
    @IBOutlet weak var VideoImage: UIImageView!
    
    @IBOutlet weak var VideoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(cpmodel: CPModel)
    {
        VideoTitle.text = cpmodel.videotitle
        //let url =
        
        DispatchQueue.global( ).async {
            do{
            
                let data = try Data(contentsOf: URL(string:cpmodel.imageURL)!)
                
                DispatchQueue.global().sync {
                    
                    self.VideoImage.image = UIImage(data: data)
                }
                
            } catch {
                //handle error
            }
            
        }
        }
    
    }

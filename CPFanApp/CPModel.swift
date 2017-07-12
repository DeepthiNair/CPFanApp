//
//  CPModel.swift
//  CPFanApp
//
//  Created by Deepthi on 05/07/17.
//  Copyright © 2017 Deepthi. All rights reserved.
//

import Foundation

class CPModel{
    
    private var _imageURL: String! 
    private var _videoURL: String!
    private var _videotitle: String!
    
    var  imageURL: String {
            return _imageURL
    
    }
    
    var videoURL: String{
        return _videoURL
    }
    
    var videotitle: String{
        
        return _videotitle
    }
    
    init(imageURL: String, videoURL: String, videotitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videotitle = videotitle
        
    }
    
}

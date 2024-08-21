//
//  WebService.swift
//  News
//
//  Created by Aydın Kutlu on 19.08.2024.
//

import Foundation

class WebService {
    
    func downloadNews(url: URL, completion: @escaping ([News]?)->()){
        
        URLSession.shared.dataTask(with: url) { (data,response,error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                let newsList = try? JSONDecoder().decode([News].self, from:data)
                
                if let newsList = newsList {
                    completion(newsList)
                }
            }
        }.resume()
    }
}

//
//  MainServise.swift
//  SpaceX
//
//  Created by Андрей Бабкин on 27.01.2023.
//

import Foundation

struct MainService {
    
    static func getRockets(completion: @escaping ([RocketsInfoModel]) -> Void) {
        var rocketRequest = URLRequest(url: URL(string: "https://api.spacexdata.com/v4/rockets")!)
        var task = URLSession.shared.dataTask(with: rocketRequest) { data, response, error in
            if let data = data, let rocketInfo = try? JSONDecoder().decode([RocketsInfoModel].self, from: data) {
                completion(rocketInfo)
//            } else {
//                print(error)
            }
        }
        task.resume()
        }
        //     распечатать ответ от сервера
        //     распечатать свою модель
        
        
        func getLaunches() -> LaunchInfoModel {
            // пример
            return LaunchInfoModel(success: true)
            // URLSssion.dataTask... -> LaunchInfoModel
            //        return LaunchInfoModel(заполненная)
        }
        
    }
    


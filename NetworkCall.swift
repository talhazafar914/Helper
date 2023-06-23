//
//  NetworkCall.swift
//  SwiftUIBootCamp
//
//  Created by Everything Apple on 23/06/2023.
//

import Foundation
import Alamofire

class NetworkCall
{
    /**This function takes a URL and a parameter, and its completion is a dictionary*/
    func postRequest(Url:String,Parm:[String:Any], Header:HTTPHeaders ,completion: @escaping (NSDictionary,Bool) -> ())
    {
        AF.request(URL(string: Url)!, method: .post, parameters: Parm, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
            case .success:
                if let JSON = response.value
                {
                    print("JSON: \(JSON)")
                    let dic = (JSON as! NSDictionary)
                    print(dic)
                    completion(dic,true)
                }
                else
                {
                    completion([:],true)
                }
            case .failure(let error):
                print(error)
                completion([:],false)
            }
        }
    }
    
    /**This function takes a URL and a parameter, and its completion is nsArray*/
    func postRequest(Url:String,Parm:[String:Any], Header:HTTPHeaders ,completion: @escaping (NSArray,Bool) -> ())
    {
        AF.request(URL(string: Url)!, method: .post, parameters: Parm, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
                case .success:
                    if let JSON = response.value
                    {
                        print("JSON: \(JSON)")
                        let dic = (JSON as? NSArray ?? [])
                        print(dic)
                        completion(dic,true)
                    }
                    else
                    {
                        completion([],true)
                    }
                case .failure(let error):
                    print(error)
                    completion([],false)
            }
        }
    }
    
    /**This function takes only URL and  its completion is nsArray*/
    func postRequest(Url:String, Header:HTTPHeaders ,completion: @escaping (NSArray,Bool) -> ())
    {
        AF.request(URL(string: Url)!, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
                case .success:
                    if let JSON = response.value
                    {
                        print("JSON: \(JSON)")
                        let dic = (JSON as? NSArray ?? [])
                        print(dic)
                        completion(dic,true)
                    }
                    else
                    {
                        completion([],true)
                    }
                case .failure(let error):
                    print(error)
                    completion([],false)
            }
        }
    }
    
    /**This function takes only URL and  its completion is Dictionary, Bool*/
    func postRequest(Url:String, Header:HTTPHeaders ,completion: @escaping (NSDictionary,Bool) -> ())
    {
        AF.request(URL(string: Url)!, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
                case .success:
                    if let JSON = response.value
                    {
                        print("JSON: \(JSON)")
                        let dic = (JSON as! NSDictionary)
                        print(dic)
                        completion(dic,true)
                    }
                    else
                    {
                        completion([:],true)
                    }
                case .failure(let error):
                    print(error)
                    completion([:],false)
            }
        }
    }

    
    /**This function takes URL and Parm and  its completion is Dictionary, Bool and Data*/
    func postRequest(Url:String,Parm:[String:Any], Header:HTTPHeaders ,completion: @escaping (NSDictionary,Bool,Data) -> ())
    {
        AF.request(URL(string: Url)!, method: .post, parameters: Parm, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
                case .success:
                    if let JSON = response.value
                    {
                        print("JSON: \(JSON)")
                        let dic = (JSON as? NSDictionary ?? [:])
                        print(dic)
                        completion(dic,true,response.data ?? Data())
                    }
                    else
                    {
                        completion([:],true,Data())
                    }
                case .failure(let error):
                    print(error)
                    completion([:],false,Data())
            }
        }
    }
    
    /**Get request function, this function takes URL and Parm and  its completion is Dictionary, Bool*/
    func getRequest(Url:String,Parm:[String:Any], Header:HTTPHeaders ,completion: @escaping (NSDictionary,Bool) -> ())
    {
        AF.request(URL(string: Url)!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
                case .success:
                    if let JSON = response.value
                    {
                        print("JSON: \(JSON)")
                        let dic = (JSON as! NSDictionary)
                        print(dic)
                        completion(dic,true)
                    }
                    else
                    {
                        completion([:],true)
                    }
                case .failure(let error):
                    print(error)
                    completion([:],false)
            }
        }
    }

    /**Get request function, this function takes only URL  and  its completion is nsArray, Bool*/
    func getRequest(Url:String, Header:HTTPHeaders ,completion: @escaping (NSArray,Bool) -> ())
    {
        AF.request(URL(string: Url)!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: Header).responseJSON
        { (response:DataResponse) in
            
            switch response.result
            {
                case .success:
                    if let JSON = response.value
                    {
                        print("JSON: \(JSON)")
                        let dic = (JSON as! NSArray)
                        print(dic)
                        completion(dic,true)
                    }
                    else
                    {
                        completion([],true)
                    }
                case .failure(let error):
                    print(error)
                    completion([],false)
            }
        }
    }


}

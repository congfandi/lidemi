//
//  GolbalViewModel.swift
//  Lidemi
//
//  Created by Cong Fandi on 02/05/21.
//

import Foundation
class GlobalViewModel:ObservableObject{
    
    @Published var loginType:LoginType = LoginType.Unauthorize
    @Published var isActive:Bool = false
    func getLogin() -> LoginType{
        return loginType;
    }
    
    
}


enum LoginType{
    case Guest
    case Unauthorize
    case Authorize
}

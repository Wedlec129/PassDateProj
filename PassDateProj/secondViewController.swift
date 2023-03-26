//
//  secondViewController.swift
//  PassDateProj
//
//  Created by Борух Соколов on 26.03.2023.
//

import UIKit

class secondViewController: UIViewController {
    
    var loginTf:String? = nil //мы из других файлов можем только так передать знач
    //на прямую нельзя
    
    @IBOutlet weak var laibleT: UILabel!
    
    //в момента загрузки
    override func viewDidLoad() {
        super.viewDidLoad()

        //типо if проверка на то ли введено ли какое то значение если нет то похуй
        guard let login=self.loginTf else {return}
        laibleT.text="hello \(login)"
        
        // Do any additional setup after loading the view.
    }
    
//go back
    @IBAction func exit(_ sender: UIButton) {
        performSegue(withIdentifier: "exit", sender: nil)
        //мы не привязываем напрямую выход у кнопке
        //мы наш second к exit (вверху 3 штуки и крайнии исп) напрявляем левую к правой и называем exit
        
        
    }
    

}

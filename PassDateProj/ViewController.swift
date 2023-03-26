//
//  ViewController.swift
//  PassDateProj
//
//  Created by Борух Соколов on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loginLaible: UITextField!
    @IBOutlet weak var passswordLaible: UITextField!
    
    
    @IBOutlet weak var laibleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //когда я возвращаюсь с другого экрана обрвтно в главный
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "exit" else { return }
        guard let svc = segue.source as? secondViewController else { return }
        self.laibleText.text=svc.laibleT.text
        
    }
    
    
    
    
    
    //если нажали на кнопку то делаем переход toLogin
    @IBAction func pressedLogin(_ sender: UIButton) {
        performSegue(withIdentifier: "toLogin", sender: nil)//какой переход
        
    }//мы делаем переход не от кнопки а от сцены м обработкой в кнопке
    //от view cont делаем переход на другой экран и индифицируем ту стрклку
    
    
    //типо обработка события переход
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //если мы перешли в view с привязкой second..
        guard let dvc = segue.destination as? secondViewController else { return }
        dvc.loginTf=loginLaible.text //передаём текст
        
        //if let dvc=segue.destination as? secondViewController{
        //    dvc.loginTf=loginLaible.text
        //}else {return}
    }
    
    
    
    
    
    
    //когда нажали на экран то убираем клаву
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


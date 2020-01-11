//
//  ViewController.swift
//  DELEGATES
//
//  Created by Syed.Reshma Ruksana on 16/10/19.
//  Copyright © 2019 Syed.Reshma Ruksana. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {
    
    var firstNameLabel:UILabel!
    var firstNameTextField:UITextField!
    
    var lastNameLabel:UILabel!
    var lastNameTextField:UITextField!
    
    var ageLabel:UILabel!
    var ageTextField:UITextField!
    
    var genderLabel:UILabel!
    var genderTextField:UITextField!
    
    var emailLabel:UILabel!
    var emailTextField:UITextField!
    
    var addressLabel:UILabel!
    var addressTextField:UITextView!
    
    var mobileNumberLabel:UILabel!
    var mobileNumberTextField:UITextField!
    
    var stateLabel:UILabel!
    var stateTextField:UITextField!
    
    var countryLabel:UILabel!
    var countryTextField:UITextField!
    
    var submitButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        createForm()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createForm()
    {
        
        self.view.backgroundColor = UIColor.cyan
        
        firstNameLabel=UILabel()
        firstNameLabel.frame=CGRect(x: 20, y: 60, width: 90, height: 30)
        firstNameLabel.text="First Name"
        firstNameLabel.backgroundColor = UIColor.yellow
        firstNameLabel.layer.cornerRadius=5.0
        view.addSubview(firstNameLabel)

        
        firstNameTextField=UITextField()
        firstNameTextField.frame=CGRect(x: 150, y: 60, width: 250, height: 30)
        firstNameTextField.placeholder="Enter your First Name"
        firstNameTextField.backgroundColor  = UIColor.yellow
        firstNameTextField.adjustsFontSizeToFitWidth=true
        firstNameTextField.keyboardType=UIKeyboardType.alphabet
        firstNameTextField.layer.cornerRadius=5.0
        firstNameTextField.clearButtonMode = .always
        firstNameTextField.delegate = self

        view.addSubview(firstNameTextField)
        
        
        lastNameLabel=UILabel()
        lastNameLabel.frame=CGRect(x: 20, y:95, width: 90, height: 30)
        lastNameLabel.text="Last Name"
        lastNameLabel.backgroundColor = UIColor.yellow
        lastNameLabel.layer.cornerRadius=5.0
        view.addSubview(lastNameLabel)
        
        lastNameTextField=UITextField()
        lastNameTextField.frame=CGRect(x: 150, y: 95, width: 250, height: 30)
        lastNameTextField.placeholder="Enter your Last Name"
        lastNameTextField.backgroundColor  = UIColor.yellow
        lastNameTextField.adjustsFontSizeToFitWidth=true
        lastNameTextField.keyboardType=UIKeyboardType.alphabet
        lastNameTextField.layer.cornerRadius=5.0
        lastNameTextField.clearButtonMode = .always
        lastNameTextField.delegate = self

        view.addSubview(lastNameTextField)
        
        
        ageLabel=UILabel()
        ageLabel.frame=CGRect(x: 20, y:130, width: 90, height: 30)
        ageLabel.text="Age"
        ageLabel.backgroundColor = UIColor.yellow
        ageLabel.layer.cornerRadius=5.0
        view.addSubview(ageLabel)
        
        ageTextField=UITextField()
        ageTextField.frame=CGRect(x: 150, y: 130, width: 250, height: 30)
        ageTextField.placeholder="Enter your Age"
        ageTextField.backgroundColor  = UIColor.yellow
        ageTextField.keyboardType=UIKeyboardType.numberPad
        ageTextField.layer.cornerRadius=5.0
        ageTextField.clearButtonMode = .always
        ageTextField.delegate = self

        view.addSubview(ageTextField)
        
        
        genderLabel=UILabel()
        genderLabel.frame=CGRect(x: 20, y:165, width: 90, height: 30)
        genderLabel.text="Gender"
        genderLabel.backgroundColor = UIColor.yellow
        genderLabel.layer.cornerRadius=5.0
        view.addSubview(genderLabel)
        
        genderTextField=UITextField()
        genderTextField.frame=CGRect(x: 150, y: 165, width: 250, height: 30)
        genderTextField.placeholder="MALE/FEMALE"
        genderTextField.backgroundColor  = UIColor.yellow
        genderTextField.layer.cornerRadius=5.0
        genderTextField.keyboardType=UIKeyboardType.alphabet
        genderTextField.clearButtonMode = .always
        genderTextField.delegate = self

        view.addSubview(genderTextField)
        
        emailLabel=UILabel()
        emailLabel.frame=CGRect(x: 20, y:200, width: 90, height: 30)
        emailLabel.text="E-mail"
        emailLabel.backgroundColor = UIColor.yellow
        emailLabel.layer.cornerRadius=5.0
        view.addSubview(emailLabel)
        
        emailTextField=UITextField()
        emailTextField.frame=CGRect(x: 150, y: 200, width: 250, height: 30)
        emailTextField.placeholder="Enter your Email ID"
        emailTextField.backgroundColor  = UIColor.yellow
        emailTextField.layer.cornerRadius=5.0
        emailTextField.keyboardType=UIKeyboardType.emailAddress
        emailTextField.clearButtonMode = .always
        emailTextField.delegate = self

        view.addSubview(emailTextField)
        
        addressLabel=UILabel()
        addressLabel.frame=CGRect(x: 20, y:270, width: 90, height: 30)
        addressLabel.text="Address"
        addressLabel.backgroundColor = UIColor.yellow
        addressLabel.layer.cornerRadius=5.0
        
        view.addSubview(addressLabel)
        
        addressTextField=UITextView()
        addressTextField.frame=CGRect(x: 150, y: 270, width: 250, height: 40)
        addressTextField.backgroundColor  = UIColor.yellow
        addressTextField.layer.cornerRadius=5.0
        addressTextField.keyboardType=UIKeyboardType.asciiCapable
        addressTextField.delegate = self

        view.addSubview(addressTextField)
        
        mobileNumberLabel=UILabel()
        mobileNumberLabel.frame=CGRect(x: 20, y:235, width: 90, height: 30)
        mobileNumberLabel.text="Mobile No:"
        mobileNumberLabel.backgroundColor = UIColor.yellow
        mobileNumberLabel.layer.cornerRadius=5.0
        view.addSubview(mobileNumberLabel)
        
        mobileNumberTextField=UITextField()
        mobileNumberTextField.frame=CGRect(x: 150, y: 235, width: 250, height: 30)
        mobileNumberTextField.placeholder="Enter your Mobile Number"
        mobileNumberTextField.backgroundColor  = UIColor.yellow
        mobileNumberTextField.layer.cornerRadius=5.0
        mobileNumberTextField.keyboardType=UIKeyboardType.numberPad
        mobileNumberTextField.clearButtonMode = .always
        mobileNumberTextField.delegate = self

        view.addSubview(mobileNumberTextField)
        
        stateLabel=UILabel()
        stateLabel.frame=CGRect(x: 20, y:315, width: 90, height: 30)
        stateLabel.text="State"
        stateLabel.backgroundColor = UIColor.yellow
        stateLabel.layer.cornerRadius=5.0
        view.addSubview(stateLabel)
        
        stateTextField=UITextField()
        stateTextField.frame=CGRect(x: 150, y: 315, width: 250, height: 30)
        stateTextField.placeholder="Enter your State Name"
        stateTextField.backgroundColor  = UIColor.yellow
        stateTextField.layer.cornerRadius=5.0
        stateTextField.keyboardType=UIKeyboardType.alphabet
        stateTextField.clearButtonMode = .always
        stateTextField.delegate = self

        view.addSubview(stateTextField)
        
        countryLabel=UILabel()
        countryLabel.frame=CGRect(x: 20, y:350, width: 90, height: 30)
        countryLabel.text="Country"
        countryLabel.backgroundColor = UIColor.yellow
        countryLabel.layer.cornerRadius=5.0
        view.addSubview(countryLabel)
        
        countryTextField=UITextField()
        countryTextField.frame=CGRect(x: 150, y: 350, width: 250, height: 30)
        countryTextField.placeholder="Enter your Country Name"
        countryTextField.backgroundColor  = UIColor.yellow
        countryTextField.layer.cornerRadius=5.0
        countryTextField.keyboardType=UIKeyboardType.alphabet
        countryTextField.clearButtonMode = .always
        countryTextField.delegate = self

        view.addSubview(countryTextField)
        
        
        
        submitButton=UIButton(type: UIButton.ButtonType.system)
        submitButton.frame=CGRect(x: 170, y: 400, width: 60, height: 40)
        submitButton.backgroundColor=UIColor.yellow
        submitButton.tintColor=UIColor.blue
        submitButton.setTitle("SUBMIT", for: UIControl.State.normal)
        submitButton.layer.cornerRadius=5.0
        view.addSubview(submitButton)
        
      
    }

    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        var returnValue:Bool = false
        if(textField == firstNameTextField)
        {
           returnValue = true
        }else if(textField == lastNameTextField)
        {
            if(firstNameTextField.text!.count>2)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == ageTextField)
        {
            if(firstNameTextField.text!.count>2 &&
               lastNameTextField.text!.count>2 )
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == genderTextField)
        {
            if(firstNameTextField.text!.count>2 && lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == emailTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == mobileNumberTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == addressTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2 &&
                mobileNumberTextField.text!.count == 10)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == stateTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2 &&
                mobileNumberTextField.text!.count == 10 &&
                addressTextField.text!.count>2)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }else if(textField == countryTextField)
        {
            if(firstNameTextField.text!.count>2 &&
                lastNameTextField.text!.count>2 &&
                Int(ageTextField.text!)! < 120 &&
                genderTextField.text!.count>1 &&
                emailTextField.text!.count>2 &&
                mobileNumberTextField.text!.count == 10 &&
                addressTextField.text!.count>2 &&
                stateTextField.text!.count>2)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }
        
       
        return returnValue
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        textField.backgroundColor = UIColor.white
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool
    {
        textField.backgroundColor=UIColor.yellow
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        //for email
        if(textField==emailTextField)
        {
            if( string=="A" || string=="B" || string=="C " || string=="D" || string=="E" || string=="F" || string=="G" || string=="H" || string=="I" || string=="J" || string=="K" || string=="L" || string=="M " || string=="N" || string=="O" || string=="P" || string=="Q" || string=="R" || string=="S" || string=="T" || string=="U" || string=="V" || string=="W " || string=="X" || string=="Y" || string=="Z" || string=="a" || string=="b" || string=="c" || string=="d" || string=="e" || string=="f" || string=="g" || string=="h" || string=="i" || string=="j" || string=="k" || string=="l" || string=="m" || string=="n" || string=="o" || string=="p" || string=="q " || string=="r" || string=="s" || string=="t" || string=="u" || string=="v" || string=="w" || string=="x" || string=="y" || string=="z" || string==""  || string=="1" || string=="2" || string=="3" || string=="4" || string=="5" || string=="6" || string=="7" || string=="8" || string=="9" || string=="0" || string=="@" || string==".")
            {
                return true
            }
            else
            {
                return false
               // self.view.makeToast("Enter Only Alphabets&Numbers", duration: 3.0, position: .top)
            }
        }
        //for mobilenum
        if(textField==mobileNumberTextField)
        {
            if(string=="1" || string=="2" || string=="3" || string=="4" || string=="5" || string=="6" || string=="7" || string=="8" || string=="9" || string=="0" || string=="")
            {
                return true
            }
            else
            {
                return false
               // self.view.makeToast("Enter Only Numbers", duration: 3.0, position: .top)
            }
        }
        //for age
        if(textField==ageTextField)
        {
            if(string=="1" || string=="2" || string=="3" || string=="4" || string=="5" || string=="6" || string=="7" || string=="8" || string=="9" || string=="0" || string=="")
            {
                return true
            }
            else
            {
                return false
               // self.view.makeToast("Enter Only Numbers", duration: 3.0, position: .top)
            }
        }
        //for firstname
        if(textField==firstNameTextField)
            
        {
            
            if( string=="A" || string=="B" || string=="C " || string=="D" || string=="E" || string=="F" || string=="G" || string=="H" || string=="I" || string=="J" || string=="K" || string=="L" || string=="M " || string=="N" || string=="O" || string=="P" || string=="Q" || string=="R" || string=="S" || string=="T" || string=="U" || string=="V" || string=="W " || string=="X" || string=="Y" || string=="Z" || string=="a" || string=="b" || string=="c" || string=="d" || string=="e" || string=="f" || string=="g" || string=="h" || string=="i" || string=="j" || string=="k" || string=="l" || string=="m" || string=="n" || string=="o" || string=="p" || string=="q " || string=="r" || string=="s" || string=="t" || string=="u" || string=="v" || string=="w" || string=="x" || string=="y" || string=="z" || string=="" )
            {
                return true
            }
            else
            {
                return false
                //self.view.makeToast("Enter Only Alphabets", duration: 3.0, position: .top)
            }
        }
        //for state
        if(textField==stateTextField)
            
        {
            
            if( string=="A" || string=="B" || string=="C " || string=="D" || string=="E" || string=="F" || string=="G" || string=="H" || string=="I" || string=="J" || string=="K" || string=="L" || string=="M " || string=="N" || string=="O" || string=="P" || string=="Q" || string=="R" || string=="S" || string=="T" || string=="U" || string=="V" || string=="W " || string=="X" || string=="Y" || string=="Z" || string=="a" || string=="b" || string=="c" || string=="d" || string=="e" || string=="f" || string=="g" || string=="h" || string=="i" || string=="j" || string=="k" || string=="l" || string=="m" || string=="n" || string=="o" || string=="p" || string=="q " || string=="r" || string=="s" || string=="t" || string=="u" || string=="v" || string=="w" || string=="x" || string=="y" || string=="z" || string=="" )
            {
                return true
            }
            else
            {
                return false
                //self.view.makeToast("Enter Only Alphabets", duration: 3.0, position: .top)
            }
        }
        //for country
        if(textField==countryTextField)
            
        {
            
            if( string=="A" || string=="B" || string=="C " || string=="D" || string=="E" || string=="F" || string=="G" || string=="H" || string=="I" || string=="J" || string=="K" || string=="L" || string=="M " || string=="N" || string=="O" || string=="P" || string=="Q" || string=="R" || string=="S" || string=="T" || string=="U" || string=="V" || string=="W " || string=="X" || string=="Y" || string=="Z" || string=="a" || string=="b" || string=="c" || string=="d" || string=="e" || string=="f" || string=="g" || string=="h" || string=="i" || string=="j" || string=="k" || string=="l" || string=="m" || string=="n" || string=="o" || string=="p" || string=="q " || string=="r" || string=="s" || string=="t" || string=="u" || string=="v" || string=="w" || string=="x" || string=="y" || string=="z" || string=="" )
            {
                return true
            }
            else
            {
                return false
                //self.view.makeToast("Enter Only Alphabets", duration: 3.0, position: .top)
            }
        }
        //for lastname
        if(textField==lastNameTextField)
        {
            if( string=="A" || string=="B" || string=="C " || string=="D" || string=="E" || string=="F" || string=="G" || string=="H" || string=="I" || string=="J" || string=="K" || string=="L" || string=="M " || string=="N" || string=="O" || string=="P" || string=="Q" || string=="R" || string=="S" || string=="T" || string=="U" || string=="V" || string=="W " || string=="X" || string=="Y" || string=="Z" || string=="a" || string=="b" || string=="c" || string=="d" || string=="e" || string=="f" || string=="g" || string=="h" || string=="i" || string=="j" || string=="k" || string=="l" || string=="m" || string=="n" || string=="o" || string=="p" || string=="q " || string=="r" || string=="s" || string=="t" || string=="u" || string=="v" || string=="w" || string=="x" || string=="y" || string=="z" || string=="" )
            {
                return true
            }
            else
            {
                return false
               // self.view.makeToast("Enter Only Alphabets", duration: 3.0, position: .top)
            }
        }
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool
    {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        return true
    }
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool
    {
         var returnVal=false
        if(mobileNumberTextField.text?.count == 10)
        {
            returnVal = true
        }
        return returnVal
    }
}


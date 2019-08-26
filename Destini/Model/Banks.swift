//
//  Banks.swift
//  Destini
//
//  Created by Mattia Marini on 14/07/2019.
//  Copyright © 2019 Mattia Marini. All rights reserved.
//

import Foundation

class StoryBank {
    var list = [Story]()
    
    init() {
        
        let item = Story(text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".")
        
        list.append(item)
        
        list.append(Story(text: "He nods slowly, unphased by the question."))
        
        list.append(Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."))
        
        list.append(Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"))
        
        list.append(Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."))
        
        list.append(Story(text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""))
        
    }
    
    
}

class TopButtonTitleBank {
    var list = [OptionsTopButton]()
    
    init() {
        let item = OptionsTopButton(title: "I\'ll hop in. Thanks for the help!")
        
        list.append(item)
        
        list.append(OptionsTopButton(title: "At least he\'s honest. I\'ll climb in."))
        
        list.append(OptionsTopButton(title: "I love Elton John! Hand him the cassette tape."))
        
    }
    
}

class BottomButtonTitleBank {
    var list = [OptionsBottomButton]()
    
    init() {
        let item = OptionsBottomButton(title: "Better ask him if he\'s a murderer first.")
        
        list.append(item)
        
        list.append(OptionsBottomButton(title: "Wait, I know how to change a tire."))
        
        list.append(OptionsBottomButton(title: "It\'s him or me! You take the knife and stab him."))
        
    }
}

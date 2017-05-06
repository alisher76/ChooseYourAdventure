//
//  Scenes.swift
//  ChoseYourOwnAdventure
//
//  Created by Alisher Abdukarimov on 5/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

var money = 600

func  selecSceneMethod1() {
    let choice = getChoiceFromUser(prompt: "I remember from yesterday that we have a great party tonight downtown, We should go, may be we can meet new friends. What do you think - ?\n",
                                   choices: [
                                    "Lets get ready for it.",
                                    "I need to stay lonely forever.",
                                    
                                    
        ])
    
    switch choice {
    case "Lets get ready for it.":
        return selecSceneMethod2()
    case "I need to stay lonely forever.":
        return finalScene()
    default:
        print("Shouldn't reach this point.")
    }
}

func finalScene() {
    print("Well that's what I get for being me- Which is nothing, I will go to pilot mode. THE END")
}

func finalSceneDeath() {
    print("I should have done better choices in my life. Why am I so unlucky, why ...................................................................................................Car runs over uuuuuuuu. Sorry. THE END")
}


func selecSceneMethod2() {
    let choice = getChoiceFromUser(prompt: "Well then, we go to gym first do a quick workout for 5 minutes and sit on a bench browsing Instagram for 45 minutes and total 50 minutes workout is enough! Later we go that party, shall we drive or take Uber, we have $\(money) in the pocket?\n",
                                   choices: [
                                    "Drive so we don't drink alcohol.",
                                    "Call Uber.",
                                    ])
    
    switch choice {
    case "Drive so we don't drink alcohol.":
        return selecSceneMethod3()
    case "Call Uber.":
        money -= 35
        return selecSceneMethod3()
    default:
        print("Shouldn't reach this point.")
    }
}


func selecSceneMethod3() {
    let choice = getChoiceFromUser(prompt: "Here we are! This is the Party we have been waiting for. So many hot people are here. Dammmmn. Lets hope we can buy a ticket to get in. Lets see, NOOOO its sold out. What do we say to a security?\n",
                                   choices: [
                                    "Lets call him a brooo and bribe him.",
                                    "Be honest and tell him the truth!",
                                    ])
    
    switch choice {
    case "Be honest and tell him the truth!":
        return selecSceneMethod4()
    case "Lets call him a brooo and bribe him.":
        print("Security got upset and kicked my ass, now I am justing walking walking and walking security took my $\(money) too")
        return finalSceneDeath()
    default:
        print("Shouldn't reach this point.")
    }
}

func selecSceneMethod4() {
    let choice = getChoiceFromUser(prompt: "Security: Sorry man, you cant go in there without a ticket. /nMe: But please I did not know that I needed a ticket no one tolde me that...... \nGirl: Hey \(givenName) how are you this is me....\nME: Thats here. Love of my life.....\n Girl: you want to join us? we have extra ticket? /n Me: What do we say?\n",
                                   choices: [
                                    "No Its OK, I got this myself, I will just go home!",
                                    "Yeah that would be great thanks!"
        ])
    
    switch choice {
    case "No Its OK, I got this myself, I will just go home!":
        print("I tried everything but failed can't get it there, I should just walk away")
        return finalSceneDeath()
    case "Yeah that would be great thanks!":
        return selecSceneMethod5()
    default:
        print("Shouldn't reach this point.")
    }
}

func selecSceneMethod5() {
    let choice = getChoiceFromUser(prompt: "We have a great time, party is awesome, and damn she is gorgeous, I think she likes us dude, I think this is going great. Shall we try to kiss her?\n",
        choices: [
            "No never never noooooo, Hell no!",
            "Yeah that would be great!"
        ])
    switch choice {
    case "No never never noooooo, Hell no!":
        print("I just walk out and don't even tell her that I left!")
        print("I better go home and watch something!")
        return finalSceneDeath()
    case "Yeah that would be great!":
        return selecSceneMethod6()
    default:
        print("Shouldn't reach this point.")
    }

}

func selecSceneMethod6() {
    let choice = getChoiceFromUser(prompt: "The way she smiles at me while she is dancing is amazing, thats it I can't wait no longer, We Kiss, her lips are amazing, WAIIIIT----/nsomeDude: Hey man and pulled me back, she is my girlfriend and I orgonized this party, what do you think you are doung?\n",
                                   choices: [
                                    "Sorry I did not know and forgive me let me go home!",
                                    "Sorry did not know But I like her a lot and I just wanted to kiss!"
        ])
    switch choice {
    case "Sorry I did not know and forgive me, let me go home!":
        print("Thank god he let us gooooooo")
        return finalSceneDeath()
    case "Sorry did not know But I like her a lot and I just wanted to kiss!":
        return selecSceneMethod7()
    default:
        print("Shouldn't reach this point.")
    }
    
}

func selecSceneMethod7() {
    let choice = getChoiceFromUser(prompt: "Girl: Thats enough, I have no boyfriend, who are you guys to talk about me like I am a property? I am leaving!/nMe: What do we do? Do we go after her? \n",
                                   choices: [
                                    "Yes!",
                                    "No lets kick that guys asss for Making a scene!"
        ])
    switch choice {
    case "Yes!":
        return selecSceneMethod8()
    case "No lets kick that guys asss for Making a scene!":
        return print("We go and try to kick that guys ass but...... THE END!")
    default:
        print("Shouldn't reach this point.")
    }
    
}

func selecSceneMethod8() {
    let choice = getChoiceFromUser(prompt: "Me: Wait please! I am sorry if I hurt your feelings, but I really do like you.../nGirl: thank you, for being honest about your feelings. /n:Me: We should do something right now? \n",
                                   choices: [
                                    "Ask here phone number!",
                                    "Ask her if she wants to have a dinner with us!",
                                    "Just Say things are going too fast!"
        ])
    switch choice {
    case "Ask here phone number!":
        return selecSceneMethod10()
    case "Ask her if she wants to have a dinner with us!":
        return selecSceneMethod9()
    case "Just Say things are going too fast!":
        print("Girl: What??? Whatever Leave me alone \(givenName)")
        return finalSceneDeath()
    default:
        print("Shouldn't reach this point.")
    }
    
}

func selecSceneMethod9() {
    let choice = getChoiceFromUser(prompt: "Girl: Yes I would like that /n:Me: I knew that today was gonna be a good day. /nWE GO OUT AND BECOME A THING! THE END \n want to wake up? \n",
                                   choices: [
                                    "Yes!",
                                    "No",
                            
        ])
    switch choice {
    case "Yes!":
        print("Lets Start Over")
        return selecSceneMethod2()
    case "No":
        return print("Thanks for your hospitality")
    default:
        print("Shouldn't reach this point.")
    }
    
}

func selecSceneMethod10() {
    let choice = getChoiceFromUser(prompt: "Girl: ok here call me! /n:Me: Thanks I will surely thanks! \n I go Home and start dialing, and find out that she gave me a wrong number or did she? \n",
                                   choices: [
                                    "Yes, keep trying to figure out which number messed up!",
                                    "No, I should have to ask her out!",
                                    
                                    ])
    switch choice {
    case "Yes, keep trying to figure out which number messed up!":
        return print("THE END")
    case "No, I should have to ask her out!":
        return print("THE END")
    default:
        print("Shouldn't reach this point.")
    }
    
}


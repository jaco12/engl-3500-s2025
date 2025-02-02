// To be completed after you have played/read both "about ink" files

Here is an Ink file with many problems. Please fix them and write in a comment how you did so. The comment can be very brief, for instance:
\/\/ This Knot didn't go anywhere, so I added a Divert.  
Ok, on to the challenges. You will need to read the text and discern what the "novice programmer" is trying to do, then fix their code, with comments. 

* This is a choice 
* This is a sub-choice of the first choice 
Some stuff happens if you choose this. 
    * * Here is another sub-choice of that first choice
    Some other stuff happens. 
        * * * And here is a third, with it's own sub-choices. 
            * * * * * sub-sub-choice! 
            * * * * * sub-sub-choice number two!

- Now that you've made your choice, we can continue with the main story. -> the_main_story // did not contain a divert to the main story, so i added one. I also made this a gather statement, so that no matter what is chosen, it still moves on to this place in the story. 

=== the_main_story === // original knot contained spaces, so i replaced them with underscores

Once upon a time, there was a dog. That dog wanted to learn to fly. You see, it really liked crepes. But only in Paris. 

You can undestand it's conundrum. 

* Tell me more about the dog.

- I'll happily tell you more about the dog! -> about_the_dog // divert was on the wrong line, so I moved in front of this line

=== about_the_dog ===

The thing is, you are the dog. You have options. What do you do?
// I added brackets around the sentences because each sentence stays on the screen when it moves to the corresponding knot, which reads somewhat awkwardly for the reader.
* Walk the 20 miles to the airport and bark at somebody near a plane -> bark_at_somebody 
* [Use your paws to ask ChatGPT "What should a dog do to learn to fly?"] -> ask_chat_GPT
* [You learn to enjoy dog food.] -> dog_food // brackets were already used in this sentence, but they were around an awkward part of the sentence, so I put it around the whole sentence so that it flows better for the reader.


=== ask_chat_GPT === //original knot was titled the_airport which did not exist as a choice. So i changed it to ask_chat_GPT which was an existing choice that had no corresponding knot

You ask ChatGPT and this is what it tells you: "Harness Technology: Imagine a dog strapped into a specially designed drone, soaring gently above the ground. With calm training and proper safety measures, adventurous pups could experience a bird’s-eye view of the world. This futuristic concept highlights the bond between humans and their pets, exploring new ways to share adventures together."

After pondering on its answer, you get hungry, so you go to the pantry to eat some dog food. -> dog_food

    // this knot was loose, so i added a divert to dog_food

=== bark_at_somebody === //knot syntax was incorrect, i added the correct amount of equals signs
You go to the airport and bark at a man wearing a bright vest. -> catastrophe

// this knot was loose so i added a divert to catastrophe

=== just_get_into_an_open_cockpit_and_wing_it === //knot syntax was incorrect, i added the correct amount of equals signs
You get into an open cockpit and "wing" it. 
-> catastrophe 

=== dog_food ===

Really this was the only rational answer. The end. // needed divert to DONE, so i added one
-> DONE

== catastrophe == // only had one =, so i added two more on each side

Oh no! They found you. You get a pet and your human comes pick you up. You must learn to love dog food, I guess. // "dog food" in this sentence matched the divert syntax (dog_food), which is unnecessary

-> dog_food //divert syntax was incorrect (>) changed it to correct syntax (->)
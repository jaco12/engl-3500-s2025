VAR has_prison_key = false
VAR has_boss_key = false
VAR has_sword = false
VAR has_returned = false

You wake up in a darkly lit room.

You are sweaty. You are hungry. You are bleeding.

You know not your name or where you are. But purpose burns in your heart. 

You must escape.

* [Look around.] -> original_room

== original_room ==
{
    - has_returned:
        You are back in the room you awoke in. The same doors are still there, one to the west and one to the north. -> look_around
    - else:
        You look around and notice two doors, one to the west and one northwards. -> look_around
}

= look_around
+ [Take the door to your left.] -> room_6

+ [Take the door straight ahead.] -> crossroads

+ [Keep looking.]
    The room is bare. Nothing except the mound of dirt on which you awoke. There is nothing to find here. -> look_around

== crossroads ==
You find yourself at a crossroads.

+ [Go north.] -> room_2

+ [Go east.] -> room_5

+ [Go west.] -> room_4

+ [Go south.] 
    ~ has_returned = true
    -> original_room

== room_1 ==
// boss key
You enter and see a small table in the center of the room. There is a large pool of blood underneath it. -> look_around

= look_around
 There is a door to the east and to the south.
 
 + [Take the east door.] -> room_2
 
 + [Take the south door.] -> room_4
 
 * [Look around.]
    You walk towards the table. The blood seems fresh. You notice a key on the table. There is not much else. The walls are bare. The light is dim.

    ** [Take the key.]
        ~ has_boss_key = true
        You take the key. It is a copper key that has turned green from age. You don't know what it opens. But you take it anyway. Just in case. -> look_around

== room_2 ==
// room before boss room
There is a door in each direction. However, you hear a low rumble behind the north door. -> look_around

= look_around
    + [Take the north door.] 
        You try to go north, but the door is locked.
        {
            - has_prison_key && not has_boss_key:
                + [Use the key from the prison door.]
                    It does not fit. The key is too large. -> look_around
            - has_boss_key && not has_prison_key:
                * [Use the copper key that you had found.] 
                    The door opens. -> boss_room
            - has_boss_key && has_prison_key:
                + [Use the prison door key.]
                    It does not fit. The key is too large. -> look_around
                * [Use the green copper key.]
                    The door opens. -> boss_room
            - else:
                + [You need a key.] -> room_2
        } 
    
    + [Take the east door.] -> room_3
    
    + [Take the west door.] -> room_1
    
    + [Take the south door.] -> crossroads

== room_3 ==
// sword
You enter the room. There is a door to the west. There is a door to the south. -> look_around

= look_around
 + [Take the west door.] -> room_2
 
 + [Take the south door.] -> room_5
 
 * [Look around.]
    Tucked into the corner of the room is a broadsword. 

    ** [Take the sword.]
        ~ has_sword = true
        You take the sword. You pray that you don't have to use it. You wonder if you have taken a life before. You don't remember. 
        
        The sword is heavy, but you are strong. -> look_around

== room_4 ==
// food
You enter the room. It is a kitchen. You see doors to you north, south, and east. -> look_around

= look_around
    + [Take the north door.] -> room_1
    
    + [Take the east door.] -> crossroads
    
    + [Take the south door.] -> room_6
    
    * [Look around.] 
        You rummage through the kitchen, looking for anything that you can eat. 
    
        You find some stale bread. You scarf it down without a second thought. It was not delicious, but it was necessary.
        
        You are still hungry, but not as much. -> look_around

== room_5 ==
// hallway
You enter to see doors to the north and to the west. To the east is a long dark hallway. You cannot see the end. There is no light at the end of this tunnel.

+ [Take the north door.] -> room_3

* [Walk east]. -> hallway

+ [Take the west door.] -> crossroads

== hallway ==
// death
You keep walking. You are unsure whether there is an end to this hallway. But you know that you must get out of here.
* [Keep walking.]
    You keep walking.
    ** [Keep walking.]
       You keep walking.
       
       And walking.
       
       And walking.
       
       And walking.
       
       Hours go by. Doubt creeps into your mind. Maybe this wasn't the right way. But it is too late to turn back now.
       *** [Keep walking.]
        You keep walking.
        
        And walking.
        
        You walk so much that you cannot even stand anymore. You collapse onto the ground and pass out from fatigue. You never wake up. You die. -> DONE
* [Go back the way you came.] -> room_5

== room_6 ==
// prison key
You enter the room. On one side is a small prison cell. There is a door to the east and to the north. -> look_around

= look_around
    + [Take the east door.]
        ~ has_returned = true
        -> original_room
    
    + [Take the north door.] -> room_4
    
    * [Look around.]
        You walk closer to the prison cell. It smells of vomit and human excrement. The door is ajar. Nobody is imprisoned within. You notice a key inserted into the lock.
        
            ** [Take the key.]
                ~ has_prison_key = true
                You take the key. Maybe other doors can be opened with this key. -> look_around


== boss_room ==
{
    - has_sword:
        You step into the dark room. A large, furry monster looms before you. It growls, baring sharp teeth.
        
        You are terrified. But you have no choice. You must do anything to survive and escape.
        
        You grip your broadsword and charge. The blade slices through its thick hide. It lets out a final howl before collapsing. The room falls silent.
        
        You see a door behind the carcass of the monster. Sunlight slips through the crack underneath the door. Cautious relief fills your heart.
        
        You open the door. You pray that this is the last door you have to open. -> DONE
    - else:
        You step into the dark room. A large, furry monster looms before you. It growls, baring sharp teeth. 
        
        You have no weapon. You try to run, but it's too fast. Claws tear through your chest. Pain floods your body. 
        
        The world fades to black. -> DONE
}
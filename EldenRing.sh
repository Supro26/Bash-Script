#!/bin/bash
for i in {1..100}
do
    echo -ne "Game Loading... $i%\r"
    sleep 0.05
done

echo -e "\n\n - - - - - - Elden Ring - - - - - -\n"
echo -e "We Have a Beast in front, which weapon you wanna pick
'0' for Sword
'1' for Bow & Arrow"
read c1
points=0
beast=$(( $RANDOM % 2 ))
if [[ $beast == $c1 ]]; then
    echo "Beast VANQUISHED, Congrats!"
    points=$(( $points + 2 )) 
else
    echo "You are Highly injured!!"
    sleep 1
    echo "DO OR DIE, you have one chance left to survive..."
    sleep 0.2
    read -p "pick b/w 0 to 4 : " c2
    beast=$(( $RANDOM % 5 ))
    if (( $beast <= $c2 )); then
        echo "Good Luck fellow you survived !"
        points=$(( $points + 1 ))
    else 
        echo "You Are Done."
        echo "Your Score : $points"
        exit 1
    fi
fi
sleep 2
echo -e "BOSS BATTLE ~~ Get Ready"
sleep 1
echo "You need to pick a weapon , select b/w '0' to '9' :"
read c3
beast=$(( $RANDOM % 10 ))
if [[ $beast == $c3 ]]; then
    echo "Beast VANQUISHED, You Survived all the rounds Warrior!"
    points=$(( $points + 3 ))
elif (( $points == 2 )); then
    echo "You lost one leg !!"
    sleep 1
    read -p "ONE LAST CHANCE, select b/w '0' to '9' : " c3
    if [[ $beast == $c3 ]]; then
        echo "Beast VANQUISHED, You Survived all the rounds Warrior!"
        points=$(( $points + 2 ))
    else
        echo "You Are Defeated.."
    fi
else
    echo "You Died."
fi
echo "Your Score : $points"

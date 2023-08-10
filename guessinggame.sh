function check_guess {
    local answer=$(ls -1A | wc -l) # Count the number of files in the current directory
    if [[ $1 -lt $answer ]]; then
        echo "Too low!"
    elif [[ $1 -gt $answer ]]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed the correct number: $answer"
        exit 0
    fi
}

while true; do
    echo "Guess the number of files in the current directory:"
    read guess
    if [[ $guess =~ ^[0-9]+$ ]]; then
        check_guess $guess
    else
        echo "Invalid input. Please enter a valid number."
    fi
done

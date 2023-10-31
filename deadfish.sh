#!/bin/sh

printf "Chose your desired interpreter:"
printf "1) Python \n2) C\n3) Rust\n4) Java\n"

read -p "Enter your choice: " choice
read -p "Enter your code: " code
read -p "Output as ASCII? (y/n): " ascii

case $choice in
    1)
        if [ $ascii = "y" ]; then
            printf $code | python python/main.py $code -s
        else
            printf $code | python python/main.py $code
        fi
        ;;
    2)
        if [ $ascii = "y" ]; then
            printf $code | gcc c/main.c -o c/main && ./c/main $code -s
        else
            printf $code | gcc c/main.c -o c/main && ./c/main $code
        fi
        ;;
    3)
        if [ $ascii = "y" ]; then
            printf $code | rustc rust/src/main.rs -o rust/src/main && ./rust/src/main $code -s
        else
            printf $code | rustc rust/src/main.rs -o rust/src/main && ./rust/src/main $code
        fi
        ;;
    4)
	cd java
	javac src/deadfish.java
	if [ $ascii = "y" ]; then
	    printf $code | java src.deadfish $code -s
	else
	    printf $code | java $code 
	cd ..
	fi
	;;
    *)
        echo "Invalid choice"
        ;;
esac
# delete the compiled files
case $choice in
    2)
        rm c/main
        ;;
    3)
        rm rust/src/main
        ;;
    4) 
	rm src/deadfish.class
	;;
esac

echo ""

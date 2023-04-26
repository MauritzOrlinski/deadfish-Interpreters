#!/bin/sh

echo "Chose your desired interpreter:"
echo "1) Python"
echo "2) C"
echo "3) Rust"

read -p "Enter your choice: " choice
read -p "Enter your code: " code
read -p "Output as ASCII? (y/n): " ascii

case $choice in
    1)
        if [ $ascii = "y" ]; then
            echo $code | python python/main.py $code -s
        else
            echo $code | python python/main.py $code
        fi
        ;;
    2)
        if [ $ascii = "y" ]; then
            echo $code | gcc c/main.c -o c/main && ./c/main $code -s
        else
            echo $code | gcc c/main.c -o c/main && ./c/main $code
        fi
        ;;
    3)
        if [ $ascii = "y" ]; then
            echo $code | rustc rust/src/main.rs -o rust/src/main && ./rust/src/main $code -s
        else
            echo $code | rustc rust/src/main.rs -o rust/src/main && ./rust/src/main $code
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
esac
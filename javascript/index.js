function deadfishInterpreter(input, outputType) {
    storage = 0;
    output = "";

    for (i = 0; i < input.length; i++) {
        if (storage < 0 || storage > 255) {
            storage = 0;
        }

        switch (input[i]) {
            case 'i':
                storage++;
                break;
            case 'd':
                storage--;
                break;
            case 's':
                storage *= storage;
                break;
            case 'o':
                if (outputType) {
                    output += String.fromCharCode(storage);
                }
                else {
                    output += storage +" ";
                }
                break;
        }
    }
    return output;
}

console.log(deadfishInterpreter("iiisdsiiiiiiiioiiiiiiiiiiiiiiiiiiiiiiiiiiiiioiiiiiiiooiiiodddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddoddddddddddddodddddddddddddddddddddsddoddddddddoiiioddddddoddddddddodddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddo", false));
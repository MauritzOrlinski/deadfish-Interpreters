use std::env;

fn main() {
    let args = env::args().collect::<Vec<String>>();
    if args.len() == 3 && args[2] != "-s" || args.len() < 2 || args.len() > 3 {
        println!("Illegal program arguments!");
        std::process::exit(1);
    }

    let mut counter = 0;
    let word = &args[1];
    let word_vec = word.chars().collect::<Vec<char>>();

    for i in 0..word_vec.len() {
        if counter == 256 || counter == -1 {
            counter = 0;
        }

        //match char
        match word_vec[i] {
            'i' => counter += 1,
            'd' => counter -= 1,
            's' => counter *= counter,
            'o' => {
                if args.len() == 2 {
                    println!("{}", counter);
                } else {
                    print!("{}", counter as u8 as char)
                }
            }
            _ => {
                println!("Illegal program arguments!");
                std::process::exit(1);
            }
        }
    }
}

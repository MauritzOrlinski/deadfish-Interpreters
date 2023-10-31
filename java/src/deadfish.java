package src;

public class deadfish {
    public static void main(String[] args) throws Exception {
        if (args.length != 1 && args.length != 2) {
            throw new Exception("Illegal cli Arguments");
        } else if (args.length == 1) {
            interpeter(args[0], false);
        } else {
            interpeter(args[0], true);
        }
    }

    private static void interpeter(String input, boolean output) throws Exception {
        int counterstorage = 0;
        for (char i:input.toCharArray()) {
            if (counterstorage > 256 || counterstorage < 0) {
                counterstorage = 0;
            }

            switch (i) {
                case 'i':
                    counterstorage++;
                    break;
                case 'd':
                    counterstorage--;
                    break;
                case 's':
                    counterstorage *= counterstorage;
                    break;
                case 'o':
                    System.out.print(output?(char) counterstorage:(counterstorage + "\n"));
                    break;
                default:
                    throw new Exception("Illegal symbol: " + i + " noticed");
            }
        }
    }
}

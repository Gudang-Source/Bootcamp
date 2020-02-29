function Countvowels(argument) {


        Scanner sc = new Scanner(System.in);
		
		String strl;
        var count = 0;
        var i = "aiueoAIUEO";
		System.out.print(" Masukkan Kata : ");
		str1 = sc.nextLine();
        
        for(var i=0; i<str1.length(); i++){
            if (vowels.indexOf(str[i]) > -1)
            {
              count++;
            }
        }
        return "Jumlah Vowel Adalah "+(str1);
        }
    Countvowels(strl);
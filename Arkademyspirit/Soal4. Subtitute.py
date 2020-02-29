def ganti_kata ( kata_input , karakter_terganti , pengganti_karakter  ) :
    for i in range (len ( kata_input )) :
        if ( kata_input [i] == karakter_terganti ) :
            if (i != 0):
                kata_input = kata_input [ 0 : i ] + pengganti_karakter + kata_input [ ( i + 1 ) : len ( kata_input ) ]
            else:
                kata_input = pengganti_karakter + kata_input [ (i + 1) : len ( kata_input ) ]
            
            
    print(kata_input)
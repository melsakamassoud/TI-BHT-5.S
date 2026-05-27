import numpy as np

ciphers_xored = [17, 4, 1, 26, 0, 24, 23, 23, 10, 1, 28, 19, 19, 15, 20, 30, 6, 11,
               4, 8, 17, 29, 23, 1, 24, 23, 28, 17, 20, 18, 9, 27, 17, 13, 13, 10,
               13, 18, 7, 4, 22, 23, 10, 22, 13, 27, 8, 5, 28, 1, 23, 26, 19, 12,
               6, 0, 8, 7, 2, 15, 0, 3, 7, 0, 9, 7, 29, 19, 19, 3, 2, 29, 27, 8, 11,
               7, 0, 6, 17, 26, 10, 26, 31, 26]

def letter2num(letter):
    return ord(letter.upper()) - ord('A') + 1

def word2nums(word):
    return [letter2num(letter) for letter in word]

def num2letter(num):
    if 1 <= num <= 26:
        return chr(num + ord('A') - 1)
    return "_"

def nums2word(chunk):
    len_word = len(chunk)
    word = ''.join(num2letter(x) for x in chunk)
    print(word)

def xor_text(known_word, ciphers_xored):
    len_word = len(known_word)

    for i in range(len(ciphers_xored) - len_word + 1):
        position = np.bitwise_xor(known_word, ciphers_xored[i:i+len_word])
        print(i, position)
        nums2word(position)


# Da der gleiche Schlüssel verwendet wurde gilt für das OTP: M xor M' = C xor C'
# Mit dem bekannten Klartext kann stellenweise durch den Zahlentext iteriert werden und
# somit xor-Eigenschaft a xor a xor b = 0 xor b = b ausgenutzt werden.
# Somit kann der Klartext im anderen Text offengelegt werden.
# Durch raten lässt sich dann in den Klartexten jeweils mehr aufdecken

known_text1 = 'UMDIESENZUSTANDVONSICHERHEITZUERREICHENWERDENSICHERHEITSKONZEPTEERSTELLTUNDUMGESETZT'
known_text2 = 'DIESEKRYPTOGRAPHIEWARURSPRUENGLICHDIEWISSENSCHAFTDERVERSCHLUESSELUNGVONINFORMATIONEN'

xor_text(word2nums(known_text2), ciphers_xored)


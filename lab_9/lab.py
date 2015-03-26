if __name__ == '__main__':
        with open('menu.txt','r') as menu:
            list_of_menu = menu.readlines()

        done = False

        total =0

        while(done != True):
            print "Enter a word, and we will find a menu entry corresponding to it."
            print "Enter done to exit:"
            word = raw_input()

            if 'done' in word:
                done = True


            for entry in list_of_menu:
                if word in entry:
                    name,price = entry.split('$')

                    price = filter(type(price).isdigit, price)

                    print "Name = ", name
                    print "Price = $", price
                    total += int(price)
                    break
            print "Total = $", total, '\n\n'

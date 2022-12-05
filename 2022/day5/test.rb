minlista = ["hejsan","tjena","knasboll"]

andralistan = ["namn","namnsson"]

minlista.insert(0, andralistan)

minlista.flatten!

p minlista
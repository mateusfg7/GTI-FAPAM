class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

text = input("Texto a ser dividido: ")
position = input("Posição de divisão da string: ")

if not text or not position:
    print(f"\n{bcolors.FAIL}Quantidade de parâmetros insuficientes ou inválidos!{bcolors.ENDC}")
    quit()

position = int(position)

if position > len(text):
    print(f"\n{bcolors.FAIL}Posição de divisão maior que o tamanho do texto!{bcolors.ENDC}")
    print(f"Tamanho do texto: {bcolors.BOLD}{len(text)}{bcolors.ENDC}")
    print(f"Posição de divisão: {bcolors.BOLD}{position}{bcolors.ENDC}")
    quit()

first_part, second_part = text[:position], text[position:]

print(f"\n{bcolors.OKGREEN}Primeira parte:{bcolors.ENDC} {bcolors.BOLD}{first_part}{bcolors.ENDC}")
print(f"{bcolors.OKGREEN}Segunda parte:{bcolors.ENDC}  {bcolors.BOLD}{second_part}{bcolors.ENDC}")

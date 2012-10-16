# put in PYTHONSTARTUP by bashrc.d/??-python.sh
# run during startup of an interactive session
print("Hello, World!")
try:
    import readline
except ImportError:
    print("No readline :(")
else:
    import rlcompleter
    readline.parse_and_bind("tab: complete")

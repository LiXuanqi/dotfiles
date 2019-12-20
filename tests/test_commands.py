import os

def is_program_exist(program_name):
    if os.system('command -v %s >/dev/null 2>&1' % program_name) != 0:
        return False
    return True

def test_commands():
    assert is_program_exist('ls')
    assert is_program_exist('brew')
    

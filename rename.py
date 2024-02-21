import os

def rename_files(directory, old_part, new_part):
    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            new_filename = filename.replace(old_part, new_part)
            os.rename(os.path.join(directory, filename), os.path.join(directory, new_filename))
            print(f'{filename} -> {new_filename}')


# Example usage
directory = os.path.join( os.getcwd(), 'data', 'shortcity')
old_part = 'frame_'
new_part = ''
rename_files(directory, old_part, new_part)

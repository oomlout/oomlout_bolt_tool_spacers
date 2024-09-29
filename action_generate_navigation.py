import os
import shutil
import glob
import yaml

def main(**kwargs):
    folder_parts = "parts"
    #get all folders in parts non recursive    
    folders = os.listdir(folder_parts)
    #number of folders to process message into string
    print(f"Processing {len(folders)} folders")
    count = 0
    for folder in folders:
        #print a dot for each folder processed
        count += 1
        if count % 100 == 0:
            print(count, end="")
        if count % 1000 == 0:
            print(f" {count} folders processed")
        yaml_file = f"{folder_parts}/{folder}/working.yaml"
        if os.path.exists(yaml_file):
            with open(yaml_file, 'r') as file:
                data = yaml.load(file, Loader=yaml.FullLoader)            
            file_3dpr_source = f"{folder_parts}/{folder}/3dpr.stl"
            file_3dpr_destination = f"3d_print/{folder}.stl"            
            if os.path.exists(file_3dpr_source):
                if not os.path.exists(f"3d_print"):
                    os.makedirs(f"3d_print")
                shutil.copy(file_3dpr_source, file_3dpr_destination)
                internal_diameter_string = data.get("internal_diameter_string", "")
                od_string = data.get("od_string", "")
                folder_navigation = f"navigation"
                folder_navigation_destination = f"{folder_navigation}/{internal_diameter_string}_id/{od_string}_mm_od"
                file_navigation_destination = f"{folder_navigation_destination}/{folder}.stl"
                if not os.path.exists(folder_navigation_destination):
                    os.makedirs(folder_navigation_destination)
                
                shutil.copy(file_3dpr_source, file_navigation_destination)




if __name__ == "__main__":
    kwargs = {}
    main(**kwargs)
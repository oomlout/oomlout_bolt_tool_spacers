import copy
import opsc
import oobb
import oobb_base

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    parts = []
    # save_type variables
    if True:
        filter = ""
        #filter = "spacer_m5_id_25_mm_od_10_mm_wall_thickness_3_mm_depth"

        kwargs["save_type"] = "none"
        #kwargs["save_type"] = "all"
        
        #generate_oomp = False
        generate_oomp = True

        kwargs["overwrite"] = True
        #kwargs["overwrite"] = False
        
        #kwargs["modes"] = ["3dpr", "laser", "true"]
        #kwargs["modes"] = ["3dpr"]
        #kwargs["modes"] = ["laser"]

    # default variables
    if True:
        kwargs["size"] = "oobb"
        kwargs["width"] = 12
        kwargs["height"] = 12
        kwargs["thickness"] = 6

    # project_variables
    if True:
        pass
    
    # declare parts
    if True:

        part_default = {} 
        part_default["project_name"] = "test" ####### neeeds setting
        part_default["full_shift"] = [0, 0, 0]
        part_default["full_rotations"] = [0, 0, 0]

        #oomp stuff
        part_default["oomp_classification"] = ""
        part_default["oomp_type"] = ""
        import os
        #get current file directory name
        dir = os.path.basename(os.path.dirname(__file__))
        part_default["oomp_size"] = f""
        part_default["oomp_color"] = ""
        part_default["oomp_description_main"] = ""
        part_default["oomp_description_extra"] = ""
        part_default["oomp_manufacturer"] = ""
        part_default["oomp_part_number"] = ""
        
        ids = ["m2","m2_5","m2_7","m3","m4","m5","m6","m8","m10"]
        #ids = ["m2"]
        for i in range(2,11):
            ids.append(i)
        
        depths = [1,2,3,4,5,6,7,8,9,10]
        #depths = [3,6]
        #add multiples of 3 up to 100
        for i in range(3, 101, 3):
            depths.append(i)
        #add multiples of five
        for i in range(5, 101, 5):
            depths.append(i)
        wall_thicknesss = [0.5,0.75,1,1.5,2,2.5,3,3.5,4,4.5,5,10,15,20]
        #wall_thicknesss = [3]
        for internal_diameter in ids:
            for depth in depths:
                for wall_thickness in wall_thicknesss:
                    part = copy.deepcopy(part_default)
                    p3 = copy.deepcopy(kwargs)
                    p3["thickness"] = depth
                    part["kwargs"] = p3                  
                    part["internal_diameter"] = internal_diameter
                    id_number = internal_diameter
                    
                    #if internal_diameter is a string
                    if type(internal_diameter) == str:
                        #if the first charchter  of id is "m"                    
                        if internal_diameter[0] == "m":
                            id_number = internal_diameter[1:]                            
                            id_number = id_number.replace("_", ".")
                            id_number = float(id_number)
                    part["id_number"] = id_number
                    part["depth"] = depth
                    part["wall_thickness"] = wall_thickness
                    wall_thickness_string = str(wall_thickness).replace(".", "_")
                    part["wall_thickness_string"] = wall_thickness_string
                    od = id_number + wall_thickness * 2
                    part["od"] = od                              
                    #remove numbers after decimal if they are zero          
                    od_formated = str(od)
                    if od == int(od):
                        od_formated = f"{od:.0f}"
                    od_string = str(od).replace(".", "_")
                    part["od_string"] = od_string
                    mm_string = "_mm"
                    if internal_diameter != id_number:
                        mm_string = ""
                    internal_diameter_string = f"{internal_diameter}{mm_string}"
                    part["internal_diameter_string"] = internal_diameter_string
                    od_formated = od_formated.replace(".", "_")
                    part_name = f"spacer_{internal_diameter}{mm_string}_id_{od_formated}_mm_od_{wall_thickness_string}_mm_wall_thickness_{depth}_mm_depth"
                    part["name"] = part_name

                    
                    #oomp definition
                    if internal_diameter == "m3" or internal_diameter == "m6":
                        if depth < 37:
                            if wall_thickness < 11:
                                part["oomp_classification"] = "oobb"
                                part["oomp_type"] = "part"
                                part["oomp_size"] = f"project_github_{dir}"
                                oomp_color = internal_diameter
                                if "m" not in str(internal_diameter):
                                    oomp_color = f"{internal_diameter}_mm"
                                oomp_color = f"{oomp_color}_id"
                                part["oomp_color"] = oomp_color
                                part["oomp_description_main"] = f"{wall_thickness}_mm_wall_thickness"
                                part["oomp_description_extra"] = f"{depth}_mm_depth"
                        
                        
                    
                    parts.append(part)

        

        
    #make the parts
    if True:
        for part in parts:
            name = part.get("name", "default")
            if filter in name:
                print(f"making {part['name']}")
                make_scad_generic(part)            
                print(f"done {part['name']}")
            else:
                print(f"skipping {part['name']}")


    if generate_oomp:
        for part in parts:
            generate_oomp_routine(part)

###### utilities



def make_scad_generic(part):
    
    # fetching variables
    name = part.get("name", "default")
    project_name = part.get("project_name", "default")
    
    kwargs = part.get("kwargs", {})    
    
    modes = kwargs.get("modes", ["3dpr", "laser", "true"])
    save_type = kwargs.get("save_type", "all")
    overwrite = kwargs.get("overwrite", True)

    kwargs["type"] = f"{project_name}_{name}"

    thing = oobb_base.get_default_thing(**kwargs)
    kwargs.pop("size","")

    #get the part from the function get_{name}"
    get_spacer(thing, part, **kwargs)

    depth = thing.get(
        "depth_mm", thing.get("thickness_mm", 3))
    height = thing.get("height_mm", 100)
    layers = depth / 3
    tilediff = height + 10
    start = 1.5
    if layers != 1:
        start = 1.5 - (layers / 2)*3
    if "bunting" in thing:
        start = 0.5
    folder = f"parts/{part["name"]}"
    opsc.opsc_make_object(f'{folder}/3dpr.scad', thing["components"], mode="3dpr", save_type=save_type, overwrite=overwrite, layers=layers, tilediff=tilediff, start=start)    
    #dump to yaml file
    yaml_file = f"{folder}/working.yaml"
    import yaml
    with open(yaml_file, 'w') as file:
        yaml.dump(part, file)


def get_spacer(thing, part, **kwargs):    
    depth = part.get("depth", 3)
    id = part.get("internal_diameter", "")
    id_number = part.get("id_number", "")
    
    
    
    od = part.get("od", 10)

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "p"
    p3["shape"] = f"oobb_cylinder"
    p3["radius"] = od / 2
    p3["depth"] = depth
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

    p3 = copy.deepcopy(kwargs)
    p3["type"] = "n"
    p3["shape"] = f"oobb_hole"
    p3.pop("depth","")
    if id == id_number:
        p3["radius"] = id / 2
    else:
        p3["radius_name"] = id
    
    #p3["m"] = "#"
    oobb_base.append_full(thing,**p3)

def generate_oomp_routine(part):
    import os
    import yaml
    
    directory_oomp = "oomp_source"
    classsification = part.get("oomp_classification", "")

    if classsification != "":

        typ = part.get("oomp_type", "")
        size = part.get("oomp_size", "")
        color = part.get("oomp_color", "")
        description_main = part.get("oomp_description_main", "")
        description_extra = part.get("oomp_description_extra", "")

        naming_order = ["classification", "type", "size", "color", "description_main", "description_extra"]

        oomp_id = ""
        for i in range(0, len(naming_order)):
            val = part.get(f"oomp_{naming_order[i]}", "")
            if val != "":
                oomp_id += f"{val}_"
        oomp_id = oomp_id[:-1]

        folder = f"{directory_oomp}/{oomp_id}"

        data = {}
        for key in naming_order:
            data[key] = part.get(f"oomp_{key}", "")

        filename = "working.yaml"
        file_full = f"{folder}/{filename}"
        #if it doesn't exist
        if not os.path.exists(folder):
            os.makedirs(folder)
        
        #dump to yaml file
        print(f"making {file_full}")
        with open(file_full, 'w') as file:
            yaml.dump(data, file)
    else:
        print("no classification")
        






if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)
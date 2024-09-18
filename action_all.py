import scad
import action_generate_navigation

def main(**kwargs):
    scad.main(**kwargs)
    action_generate_navigation.main(**kwargs)



if __name__ == "__main__":
    kwargs = {}
    main(**kwargs)
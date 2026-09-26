local function configure()
    local home = os.getenv("HOME")
    local haikuconfdir = home .. "/config/settings"
    local haikuconfig = haikuconfdir .. "/haikuports.conf"
    local samplefile = home .. "/haikuports/haikuports-sample.conf"
    local packager = "Terry The Terrible <ciaguy@cia.gov>"
end

local function run_setup()
    os.execute("clear")
    print("(1/3) Installing haikuporter...")
    os.execute("pkgman full-sync && pkgman install -y haikuporter")
    print("(2/3) Creating directory...")
    os.execute("mkdir -p ~/haikubuild")
    print("(3/3) Configuring haikuporter...")
    return configure()
end

local function main()
    os.execute("clear")
    print([[
    $$$$$$$\            $$\ $$\       $$\ $$\   $$\           $$\ $$\                 
    $$  __$$\           \__|$$ |      $$ |$$ |  $$ |          \__|$$ |                
    $$ |  $$ |$$\   $$\ $$\ $$ | $$$$$$$ |$$ |  $$ | $$$$$$\  $$\ $$ |  $$\ $$\   $$\ 
    $$$$$$$\ |$$ |  $$ |$$ |$$ |$$  __$$ |$$$$$$$$ | \____$$\ $$ |$$ | $$  |$$ |  $$ |
    $$  __$$\ $$ |  $$ |$$ |$$ |$$ /  $$ |$$  __$$ | $$$$$$$ |$$ |$$$$$$  / $$ |  $$ |
    $$ |  $$ |$$ |  $$ |$$ |$$ |$$ |  $$ |$$ |  $$ |$$  __$$ |$$ |$$  _$$<  $$ |  $$ |
    $$$$$$$  |\$$$$$$  |$$ |$$ |\$$$$$$$ |$$ |  $$ |\$$$$$$$ |$$ |$$ | \$$\ \$$$$$$  |
    \_______/  \______/ \__|\__| \_______|\__|  \__| \_______|\__|\__|  \__| \______/ 
    
    BuildHaiku is a wrapper to the HaikuPorter utility, written in Lua. AGPLv3.
    NOTE: BuildHaiku is not affliated with Haiku Inc.
    HaikuOS is a registered trademark of Haiku Inc.

    [1] Setup
    [2] Install recipes from repositories
    [3] Run the build
    [0] Exit
]])

    io.write("> ")
    local choice = io.read()

    if choice == "1" then
        run_setup()
    elseif choice == "2" then
        install_recipes()
    elseif choice == "3" then
        run_build()
    elseif choice == "0" then
        os.exit()
    else
        print("Invalid choice.")
        os.execute("sleep 1")
        return main()
    end
end

return main()

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

    if choice == 1 then
        run_setup()
    elseif choice == 2 then
        install_recipes()
    elseif choice == 3 then
        run_build()
    elseif choice == 0 then
        os.exit()
    else
        print("Invalid choice.")
        return main()
    end
end

main()
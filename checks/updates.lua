local check = {}

function check.runCheck()
    output, exitStatus = hs.execute("softwareupdate -l | grep -i 'security'")
    if exitStatus then 
        print("Security update available: ", output)
        return false, "‼️ Security updates are available"
    else
        return true
    end
end

return check
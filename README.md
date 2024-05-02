1.Get or pull this file (rocky_whm.sh)  
2.Give it executable permissions (chmod +x rocky_whm.sh)   
3.Then run it (./rocky_whm.sh)  

  
Alternative methods:

You can't git it 
1. create file name
   vi rocky-whm.sh enable insert mode
   past .sh file code Done...
2. Run Simaple command
    .Give it executable permissions (chmod +x rocky_whm.sh)
     Then run it (./rocky_whm.sh)


This script seems to be a setup script for configuring a Rocky Linux server, particularly for hosting purposes with WHM (Web Host Manager) involvement. Here's an overview of what each part does:


1.Logging Functions: These functions handle logging of events and errors to a specified log file.
2.Error Handling Functions: These functions are responsible for handling errors that may occur during the script's execution. There's also a placeholder function resolve_error for resolving errors automatically, though it's currently empty.
3.Root Check: Ensures that the script is being run with root privileges.
4.Log File Initialization: Sets up the log file path and checks if the log directory exists.
5.System Update and Package Installation: Updates the system and installs required packages like Perl and curl.
6.Server Dependencies Installation: Placeholder section where you can add installation commands for server dependencies.
7.Network Configuration: Stops and disables the NetworkManager service, and opens ports for cPanel, WHM, and Webmail SSL services.
8.Firewall Configuration: Configures iptables rules and disables the firewalld service.
9.cPanel Installation: Downloads the latest version of cPanel installer and runs it.
10.Script Cleanup: Deletes the script file after completion.
11.Thank You Message: Displays a message thanking the user for using the script and provides the URL for accessing WHM installation.
You can customize and extend this script further based on your specific requirements and preferences.



Any Error in this script messesage me i can fix it !!!

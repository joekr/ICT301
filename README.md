                  _____ _____ _______   ____   ___  __ 
                 |_   _/ ____|__   __| |___ \ / _ \/_ |
                   | || |       | |      __) | | | || |
                   | || |       | |     |__ <| | | || |
                  _| || |____   | |     ___) | |_| || |
                 |_____\_____|  |_|    |____/ \___/ |_|
                                       
    ----------------------------------------------------------------- 
    
# Setting Up phpMyAdmin

## Install PHPMyAdmin

Here we'll explain how to install a PHPMyAdmin instance right in your workspace. Each workspace runs its own database and copy of PHPMyAdmin.

First, create a PHP workspace so you have PHP, MySQL, and Apache installed right away. You can then make sure you have MySQL installed by running:

`mysql-ctl install`

Then install phpMyAdmin:

`phpmyadmin-ctl install`

After the installation is complete you'll just want to make sure mysql is running once more:

`mysql-ctl start`

After installing phpMyAdmin, you were given a link to access PHPMyAdmin which will follow the pattern of: https://[workspacename]-[username].c9users.io/phpmyadmin. From that link, you can login with your Cloud9 username and a blank password.

## Creating a Database

### Employee Database

The following commands will allow you to import the employee data for the homework assignments.

`cd data_dumps/employee_data`

`mysql -u [username] < employees.sql`

`cd ~/workspace`

### Music Database

The following commands will allow you to import the music data for the homework assignments.

`cd data_dumps/music_data/SQL_files_with_no_foreign_key_references_as_in_the_book`

`mysql -u [username] < music.sql`

`cd ~/workspace`

## Security

Go to your phpMyAdmin website and login: https://[workspacename]-[username].c9users.io/phpmyadmin

Then go to the `User` tab. Find your user from the list and click `Edit Privileges`. From there you can enter your new password and click `go`. This will save your new password changes.

https://community.c9.io/t/setting-up-phpmyadmin/1723

# Testing

Finally, go to https://[workspacename]-[username].c9users.io/phpmyadmin and you should now see the `employees` and `music` databases. The tables should contain at least some information (basically not be empty).

From here you will be able to work on the homework assignments.

# Cloud9

## Support & Documentation

Visit http://docs.c9.io for support, or to learn more about using Cloud9 IDE. 
To watch some training videos, visit http://www.youtube.com/user/c9ide
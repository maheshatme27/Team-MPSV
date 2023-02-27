vi 1.sh
#!/bin/bash
echo "create files"
fallocate -l 10M /home/ec2-user/shell/task/shtask
vi 2.sh
#!/bin/bash
mv 1.sh log
vi 3.sh
#!/bin/bash
rm -rf log
create a crontab
crontab -e
add
15 * * * * /bin/bash /home/ec2-user/shell/task/shtask/1.sh
16 * * * *  /bin/bash /home/ec2-user/shell/task/shtask/2.sh
16 * * * * /bin/bash /home/ec2-user/shell/task/shtask/3.sh


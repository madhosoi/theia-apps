groupadd -g $GID $GROUPNAME
useradd -d /home/theia -s /bin/bash -c "Dynamic User" -u $UID -g $GID $USERNAME
chown -R $USERNAME:$GROUPNAME /home/theia
gosu $UID bash -c "HOME=/home/theia node /home/theia/src-gen/backend/main.js /home/project --hostname=0.0.0.0"

from khronos666/oracle-java8-image

run apt-get install --yes tar

run wget -qO- https://download.jetbrains.com/teamcity/TeamCity-9.0.2.tar.gz | tar xz -C /opt
run mv /opt/TeamCity/webapps/ROOT /opt/TeamCity/webapps/tc

run apt-get install --yes git mercurial subversion

volume ["/data"]
env TEAMCITY_DATA_PATH /data

expose 8111
cmd ["/opt/TeamCity/bin/teamcity-server.sh", "run"]

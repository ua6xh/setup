cp Dockerfile setup.sh
sed -i -e 's/RUN / /g' setup.sh
sed -i -e 's/FROM.*/ /g' setup.sh
chmod 777 setup.sh
cat setup.sh

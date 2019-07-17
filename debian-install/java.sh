echo "Descarga java JDK desde el siguiente enlace:"
echo "https://www.oracle.com/technetwork/java/javase/downloads/jdk11-downloads-5066655.html"
echo "Una vez que hayas descargado el archivo .tar.gz, colócalo en $(pwd)"
read -n 1 -s -r -p "Después, presiona cualquier tecla para continuar:"
#tar -xvf jdk*.tar.gz
FOLDER=$(find . -regextype sed -regex "./jdk-[0-9][0-9].[0-9].[0-9]")
echo $FOLDER
ls /usr/lib/jvm/$FOLDER/bin/
#mkdir -p /usr/lib/jvm/$FOLDER
#cp -r $FOLDER/* /usr/lib/jvm/$FOLDER
update-alternatives --install /usr/bin/java java /usr/lib/jvm/$FOLDER/bin/java 1
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/$FOLDER/bin/javac 1
update-alternatives --install /usr/bin/jar jar /usr/lib/jvm/$FOLDER/bin/jar 1
update-alternatives --install /usr/bin/javadoc javadoc /usr/lib/jvm/$FOLDER/bin/javadoc 1
update-alternatives --config java
update-alternatives --config javac
update-alternatives --config jar
update-alternatives --config javadoc

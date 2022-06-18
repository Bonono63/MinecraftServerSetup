#!/bin/bash

# Mod list basically
LITHIUM=https://cdn.modrinth.com/data/gvQqBUqZ/versions/mc1.19-0.8.0/lithium-fabric-mc1.19-0.8.0.jar
STARLIGHT=https://cdn.modrinth.com/data/H8CaAYZC/versions/1.1.1+1.19/starlight-1.1.1%2Bfabric.ae22326.jar
C2ME=https://cdn.modrinth.com/data/VSNURh3q/versions/0.2.0+alpha.8.0+1.19/c2me-fabric-mc1.19-0.2.0%2Balpha.8.0.jar
FABRIC_API=https://cdn.modrinth.com/data/P7dR8mSH/versions/0.56.0+1.19/fabric-api-0.56.0%2B1.19.jar
LAZYDFU=https://cdn.modrinth.com/data/hvFnDODi/versions/0.1.3/lazydfu-0.1.3.jar
SMOOTH_BOOT=https://cdn.modrinth.com/data/FWumhS4T/versions/1.19-1.7.1/smoothboot-fabric-1.19-1.7.1.jar
KRYPTON=https://cdn.modrinth.com/data/fQEb0iXm/versions/0.2.0/krypton-0.2.0.jar
PLASMA_VOICE=
FERRITE_CORE=https://cdn.modrinth.com/data/uXXizFIs/versions/5.0.0-fabric/ferritecore-5.0.0-fabric.jar
VERY_MANY_PLAYER=https://cdn.modrinth.com/data/wnEe9KBa/versions/0.2.0+beta.4.0+1.19/vmp-fabric-mc1.19-0.2.0%2Bbeta.4.0-all.jar
KSYXIS=https://cdn.modrinth.com/data/2ecVyZ49/versions/1.1/Ksyxis-1.1.jar
SERVER_CORE=https://cdn.modrinth.com/data/4WWQxlQP/versions/1.3.0/servercore-1.3.0-1.19.jar
MEMORY_LEAK_FIX=https://cdn.modrinth.com/data/NRjRiSSD/versions/v0.4.1/memoryleakfix-1.19-0.4.1.jar
CARPET=https://github.com/gnembon/fabric-carpet/releases/download/1.4.79/fabric-carpet-1.19-1.4.79+v220607.jar
CARPET_FIXES=https://cdn.modrinth.com/data/7Jaxgqip/versions/v1.9.2/carpet-fixes-1.19-1.9.2.jar

# download mods and make mods folder

mkdir mods
cd mods

wget $LITHIUM
wget $STARLIGHT
wget $C2ME
wget $FABRIC_API
wget $LAZYDFU
wget $SMOOTH_BOOT
wget $KRYPTON
wget $PLASMA_VOICE
wget $FERRITE_CORE
wget $VERY_MANY_PLAYER
wget $KSYXIS
wget $SERVER_CORE
wget $MEMORY_LEAK_FIX
wget $CARPET
wget $CARPET_FIXES

cd ..

# get fabric server

curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.19/0.14.8/0.11.0/server/jar

# setup

echo eula=true > eula.txt

chmod u+rwx start.sh

./start.sh

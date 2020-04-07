#!/bin/bash

Tentacle=/opt/octopus/tentacle/Tentacle

$Tentacle create-instance --config "$configFilePath"
$Tentacle new-certificate --if-blank
$Tentacle configure --listenIpAddress $hostName --port $tentaclePort --noListen False --reset-trust --app "$applicationPath"
$Tentacle configure --trust $thumbprint | echo "Registering the Tentacle $name with server $serverUrl in environment $environment with role $role"
$Tentacle register-with --server "$serverUrl" --apiKey "$apiKey" --name "$name" --env "$environment" --role "$role"
$Tentacle service --install --start

bash # keeps container running
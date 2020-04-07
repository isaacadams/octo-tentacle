# Dockerized Octopus Tentacle

this could potentially be used to create multiple deployment targets on one machine

Documentation
---

- [official docs](https://hub.docker.com/r/octopusdeploy/tentacle)
- [Tentacle cli](https://octopus.com/docs/octopus-rest-api/tentacle.exe-command-line)

#### options

- ServerApiKey: The API Key of the Octopus Server the Tentacle should register with.
- ServerUsername: If not using an api key, the user to use when registering the Tentacle with the Octopus Servr.
- ServerPassword: If not using an api key, the password to use when registering the Tentacle
- ServerUrl: The Url of the Octopus Server the Tentacle should register with.
- TargetEnvironment: Comma delimited list of environments to add this target to.
- TargetRole: Comma delimited list of roles to add to this target.
- TargetName: Optional Target name, defaults to host.
- ListeningPort: When using Passive Tentacles, the port that the Octopus Server will connect back to the Tentacle with. Defaults to 10933.
- PublicHostNameConfiguration: PublicIp, FQDN, ComputerName or Custom. Default PublicIp.

    /// .env example  
    serverUrl=http://my.octopus.app  
    thumbprint=  
    apiKey=  
    hostName=IP Address or hostname of tentacle  
    tentaclePort=10933  
    name=short name for target                                       
    environment=envrionments for target                           
    role=roles for target  
    configFilePath=/etc/octopus/tentacle-default.config  
    applicationPath=/home/octopus/Applications/

TO DO
---
- [ ] options / env should be configurable through docker compose
- [ ] the public host name of tentacle is not properly being sent to the server


Reading 📚
---
- [bash help](https://devhints.io/bash)
- [checkout snap?](https://snapcraft.io/docs/installing-snap-on-debian)
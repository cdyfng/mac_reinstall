➜  defi  git clone https://github.com/hydroprotocol/hydro-scaffold-dex.git
Cloning into 'hydro-scaffold-dex'...
remote: Enumerating objects: 23, done.
remote: Counting objects: 100% (23/23), done.
remote: Compressing objects: 100% (23/23), done.
remote: Total 4477 (delta 9), reused 6 (delta 0), pack-reused 4454
Receiving objects: 100% (4477/4477), 2.18 MiB | 593.00 KiB/s, done.
Resolving deltas: 100% (2241/2241), done.
Updating files: 100% (1131/1131), done.
➜  defi  cd hydro-scaffold-dex
➜  hydro-scaffold-dex git:(master) ls
LICENSE                              docker-compose-localhost-source.yaml docker-compose-rinkeby.yaml          envs
README.md                            docker-compose-mainnet-source.yaml   docker-compose-ropsten-source.yaml   ethereum-test-node
assets                               docker-compose-mainnet.yaml          docker-compose-ropsten.yaml          manual
backend                              docker-compose-rinkeby-source.yaml   docker-compose.yaml                  web
➜  hydro-scaffold-dex git:(master) subl .
➜  hydro-scaffold-dex git:(master) 
➜  hydro-scaffold-dex git:(master)  docker-compose pull && docker-compose up -d
Pulling redis         ... done
Pulling ethereum-node ... done
Pulling db            ... done
Pulling web           ... done
Pulling admin         ... done
Pulling api           ... done
Pulling ws            ... done
Pulling watcher       ... done
Pulling engine        ... done
Pulling launcher      ... done
Pulling maker         ... done
Creating network "hydro-scaffold-dex_default" with the default driver
Creating volume "hydro-scaffold-dex_datavolume" with default driver
Creating hydro-scaffold-dex-web           ... done
Creating hydro-scaffold-dex-pg            ... done
Creating hydro-scaffold-dex-ethereum-node ... done
Creating hydro-scaffold-dex-redis         ... done
Creating hydro-scaffold-dex-launcher      ... done
Creating hydro-scaffold-dex-watcher       ... done
Creating hydro-scaffold-dex-api           ... done
Creating hydro-scaffold-dex-admin-api     ... done
Creating hydro-scaffold-dex-engine        ... done
Creating hydro-scaffold-dex-maker         ... done
Creating hydro-scaffold-dex-ws            ... 

Creating hydro-scaffold-dex-ws            ... done
➜  hydro-scaffold-dex git:(master) 
➜  hydro-scaffold-dex git:(master) 
➜  hydro-scaffold-dex git:(master) docker ps
CONTAINER ID        IMAGE                                                     COMMAND                  CREATED              STATUS                              PORTS                                                                      NAMES
5a3ea3269d68        hydroprotocolio/hydro-scaffold-dex-backend:latest         "/bin/websocket"         About a minute ago   Up 20 seconds                       127.0.0.1:3002->3002/tcp, 127.0.0.1:4002->4002/tcp                         hydro-scaffold-dex-ws
298318317c21        hydroprotocolio/amm-bots                                  "/bin/sh -c /bin/amm…"   3 minutes ago        Up 2 seconds                                                                                                   hydro-scaffold-dex-maker
9df582d3b3e2        hydroprotocolio/hydro-scaffold-dex-backend:latest         "/bin/api"               3 minutes ago        Restarting (2) 29 seconds ago                                                                                  hydro-scaffold-dex-api
a1c5553f39ae        hydroprotocolio/hydro-scaffold-dex-backend:latest         "/bin/adminapi"          3 minutes ago        Restarting (2) 33 seconds ago                                                                                  hydro-scaffold-dex-admin-api
ce9f506d1d4f        hydroprotocolio/hydro-scaffold-dex-backend:latest         "/bin/engine"            3 minutes ago        Restarting (2) 14 seconds ago                                                                                  hydro-scaffold-dex-engine
70e8f1eb267f        hydroprotocolio/hydro-scaffold-dex-backend:latest         "/bin/launcher"          3 minutes ago        Restarting (2) 5 seconds ago                                                                                   hydro-scaffold-dex-launcher
55c4c9c24d02        hydroprotocolio/hydro-scaffold-dex-backend:latest         "/bin/watcher"           3 minutes ago        Up 1 second                         127.0.0.1:4003->4003/tcp                                                   hydro-scaffold-dex-watcher
1c46fed2f249        redis:5.0                                                 "docker-entrypoint.s…"   5 minutes ago        Up 4 minutes                        127.0.0.1:6379->6379/tcp                                                   hydro-scaffold-dex-redis
267d50b8029f        postgres                                                  "docker-entrypoint.s…"   5 minutes ago        Restarting (1) About a minute ago                                                                              hydro-scaffold-dex-pg
c455968d9a80        hydroprotocolio/hydro-scaffold-dex-ethereum-node:latest   "node /app/ganache-c…"   5 minutes ago        Up 4 minutes                        127.0.0.1:8545->8545/tcp                                                   hydro-scaffold-dex-ethereum-node
17be6ef48426        hydroprotocolio/hydro-scaffold-dex-web:latest             "sh /env.sh /goStatic"   5 minutes ago        Up 4 minutes                        127.0.0.1:3000->8043/tcp                                                   hydro-scaffold-dex-web
➜  hydro-scaffold-dex git:(master) curl http://localhost:3000/


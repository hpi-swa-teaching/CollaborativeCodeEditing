FROM 'debian'

RUN apt-get update && apt-get install -y bsdmainutils build-essential wget

WORKDIR /squeak

COPY . .
RUN chmod -R +x .

# Currently, prepare has to be run here due to some obscure issue
# Might be related to: http://forum.world.st/Using-squeak-with-a-script-td4935336.html
# 
# TODO: prepare should be executed during build, not run
CMD ./prepare.sh && ./start.sh

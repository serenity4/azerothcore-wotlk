#!/bin/bash

CUR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CUR_PATH/apps/installer/includes/includes.sh"

# if not test -d modules/mod-playerbots
#     git clone https://github.com/liyunfan1223/mod-playerbots modules/mod-playerbots
# end

AC_CCACHE=true CWARNINGS=OFF inst_compile

exit

./acore.sh client-data

# https://github.com/azerothcore/mod-account-mounts

# Don't forget to set configuration values.
# For worldserver and playerbots: https://web.archive.org/web/20240623072156/https://abs.freemyip.com:84/api/public/dl/dOIVokJQ/installation.txt?inline=true

cp -f worldserver.conf env/dist/etc/worldserver.conf
# https://github.com/liyunfan1223/mod-playerbots/wiki/Playerbot-Documentation
cp -f playerbots.conf env/dist/etc/modules/playerbots.conf
cp -f Individual-XP.conf env/dist/etc/modules/Individual-XP.conf
cp -f mod_learnspells.conf env/dist/etc/modules/mod_learnspells.conf

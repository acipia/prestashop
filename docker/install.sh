#!/bin/bash

if [ "$PS_DOMAIN" = "<to be defined>" ]; then
    export PS_DOMAIN=$(hostname -i)
fi


echo "\n" "* Launching the installer script..."
runuser -g www-data -u www-data -- php -d memory_limit=-1 /var/www/html/$PS_FOLDER_INSTALL/index_cli.php \
    --domain="$PS_DOMAIN" --db_server=$DB_SERVER:$DB_PORT --db_name="$DB_NAME" --db_user=$DB_USER \
    --db_password=$DB_PASSWD --prefix="$DB_PREFIX" --firstname="John" --lastname="Doe" \
    --password=$ADMIN_PASSWD --email="$ADMIN_MAIL" --language=$PS_LANGUAGE --country=$PS_COUNTRY \
    --all_languages=$PS_ALL_LANGUAGES --newsletter=0 --send_email=0 --ssl=$PS_ENABLE_SSL


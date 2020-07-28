env=dev
asp_env=`echo "$env" | sed -r 's/(^|_)([a-z])/\U\2/g'`

while true; do
    read -p "Do you wish to create environment [$env][$asp_env] (y/N)? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "bye~"; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "Try to create environment for [$env][$asp_env]"

eb create skynew-$env -k nano-dev-keypair.pem --envvars \
    ASPNETCORE_ENVIRONMENT=$asp_env \

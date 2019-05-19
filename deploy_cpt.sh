cat > /usr/local/bin/cpt << "EOF"
#!/bin/bash

if [[ $# -gt 0 ]]
then
    DATA=$(tar -cO $@ | gzip -9 | base64 --wrap=0)
    echo "echo '$DATA'|base64 -d|gzip -d|tar -x"
else
    echo 'Please, specify files and/or subdirectories.'
fi
EOF

chmod +x /usr/local/bin/cpt

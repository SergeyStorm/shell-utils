cat > /usr/local/bin/uncat << "EOF"
#!/bin/bash

for FILE in $@
do
    echo 'cat > '$FILE' << EOF'
    cat $FILE
    echo 'EOF'
done
EOF

chmod +x /usr/local/bin/uncat

#!/bin/bash

cd $( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# echo "*****************************************"
# echo "Checking if app port is already in use..."
# echo "*****************************************"
node -e "(async function(portNumber){ let resp; try{ resp = await require('./removeprocess.js')(portNumber); } catch(e){ resp = e; } console.log(resp.text); })($1);"

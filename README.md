# Remove Process
 ## Linux/Mac only.

Uses the "lsof" and "kill" commands (found in Linux/Mac) to remove the process that is using the specified port.

## How To Install:
```sh
git clone git@github.com:nicksen782/RemoveProcessByPort.git
```

## How To Use (Within NodeJs app):
```sh
# Within your server.js file add this:
# Replace '5001' with the port used by the process.
(
	async function(portNumber){ 
		let resp; 
		try{ resp = await require('./removeprocess.js')(portNumber); 
		} 
		catch(e){ resp = e; } 
		console.log(resp.text); 
	}
)(5001);
```

## How To Use (from BASH terminal):
```sh
# Replace '5001' with the port used by the process.
./start 5001
```
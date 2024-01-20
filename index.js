require('dotenv').config();
const os = require('os');

const chalk = require('chalk');
const terminalLink = require('terminal-link');

const app = require('./app');
const PORT = process.env.PORT || 3000;

const localIpAddress = getLocalIpAddress();
const message = `Server running on PORT ${PORT} \n http://${localIpAddress}:${PORT} - http://127.0.0.1:${PORT}`;

app.get('/', (req, res) => {
  res.send(message);
});

//If database is connected,Server is run.
app.listen(PORT, () => {
  const serverLink = terminalLink(
    chalk.bold(message),
    `http://127.0.0.1:${PORT}`,
  );

  console.log(serverLink);
});

function getLocalIpAddress() {
  const interfaces = os.networkInterfaces();
  let localIpAddress = '';
  Object.keys(interfaces).forEach((iface) => {
    interfaces[iface].forEach((details) => {
      if (details.family === 'IPv4' && !details.internal) {
        localIpAddress = details.address;
      }
    });
  });
  return localIpAddress;
}

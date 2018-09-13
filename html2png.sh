#! /bin/bash
set -e

FILENAME=chart.js

cat > $FILENAME << EOF
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('file://$(pwd)/chart.html');
  await page.screenshot({path: 'chart.png'});
  await browser.close();
})();
EOF

node $FILENAME && rm $FILENAME
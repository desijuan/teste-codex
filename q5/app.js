const axios = require('axios');

async function main() {
  try {
    const response = await axios.get(
      'http://worldclockapi.com/api/json/utc/now'
    );

    const locale = 'pt-BR';

    const dateAsString = response.data.currentDateTime;
    const dateAsDate = new Date(dateAsString);
    const dateLocal = dateAsDate.toLocaleString(locale, {
      timeZoneName: 'shortOffset',
    });
    const dateUTC = dateAsDate.toLocaleString(locale, { timeZone: 'UTC' });
    console.log(`Local: ${dateLocal}`);
    console.log(`UTC:   ${dateUTC}`);
  } catch (error) {
    console.error(error);
  }
}

main();

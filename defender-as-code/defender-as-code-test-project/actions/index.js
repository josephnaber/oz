exports.handler = async function (event) {
    console.log(event.body);
    return `Hello from Joes Action`;
};

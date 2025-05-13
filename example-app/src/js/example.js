import { Keychain } from '@dotbit/keychain';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    Keychain.echo({ value: inputValue })
}

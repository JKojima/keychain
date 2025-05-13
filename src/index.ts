import { registerPlugin } from '@capacitor/core';

import type { KeychainPlugin } from './definitions';

const Keychain = registerPlugin<KeychainPlugin>('Keychain', {
  web: () => import('./web').then((m) => new m.KeychainWeb()),
});

export * from './definitions';
export { Keychain };

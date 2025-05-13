import { WebPlugin } from '@capacitor/core';

import type { KeychainPlugin } from './definitions';

export class KeychainWeb extends WebPlugin implements KeychainPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

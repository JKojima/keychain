import { WebPlugin } from '@capacitor/core';

import type { KeychainPlugin } from './definitions';

export class KeychainWeb extends WebPlugin implements KeychainPlugin {
  async save(options: { key: string, value: string }): Promise<{ value: string }> {
    return options;
  } 
  async load(options: { key: string }): Promise<{ value: string }> {
    console.log('LOAD', options);
    return { value: "string" };
  }
  async delete(options: { key: string }): Promise<{ value: string }> {
    console.log('DELETE', options);
    return { value: "string" };
  }
}

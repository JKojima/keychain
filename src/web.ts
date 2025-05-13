import { WebPlugin } from '@capacitor/core';

import type { KeychainPlugin } from './definitions';

export class KeychainWeb extends WebPlugin implements KeychainPlugin {
  async save(_options: { key: string, value: string }): Promise<{ value: string }> {
    throw new Error('Method not implemented.');
  } 
  async load(_options: { key: string }): Promise<{ value: string }> {
    throw new Error('Method not implemented.');
  }
  async delete(_options: { key: string }): Promise<{ value: string }> {
    throw new Error('Method not implemented.');
  }
}

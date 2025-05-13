export interface KeychainPlugin {
  save(options: { key: string, value:string }): Promise<{ value: string }>;
  load(options: { key: string }): Promise<{ value: string }>;
  delete(options: { key: string }): Promise<{ value: string }>;
}

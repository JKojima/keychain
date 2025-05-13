export interface KeychainPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}

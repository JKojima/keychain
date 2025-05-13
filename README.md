# @dotbit/keychain

Keychain service for ios

## Install

```bash
npm install @dotbit/keychain
npx cap sync
```

## API

<docgen-index>

* [`save(...)`](#save)
* [`load(...)`](#load)
* [`delete(...)`](#delete)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### save(...)

```typescript
save(options: { key: string; value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                                         |
| ------------- | -------------------------------------------- |
| **`options`** | <code>{ key: string; value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### load(...)

```typescript
load(options: { key: string; }) => Promise<{ value: string; }>
```

| Param         | Type                          |
| ------------- | ----------------------------- |
| **`options`** | <code>{ key: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### delete(...)

```typescript
delete(options: { key: string; }) => Promise<{ value: string; }>
```

| Param         | Type                          |
| ------------- | ----------------------------- |
| **`options`** | <code>{ key: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------

</docgen-api>

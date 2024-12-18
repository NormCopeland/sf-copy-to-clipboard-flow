# Salesforce Copy to Clipboard Flow Component

A Lightning Web Component (LWC) that can be used in Salesforce Flows to copy text to clipboard.

## Features

- Configurable button label
- Copies specified text to clipboard
- Shows toast notification on success/failure
- Can be used in Screen Flows

## Installation

1. Clone this repository
2. Deploy to your Salesforce org:
   ```bash
   sfdx force:source:deploy -p force-app
   ```

## Usage

1. Add the component to a Screen Flow
2. Configure:
   - Button Label
   - Value to Copy

## Development

```bash
npm install
npm run lint
npm run test:unit
```

## License

MIT

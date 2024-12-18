# Salesforce Copy to Clipboard Flow Component

A Lightning Web Component (LWC) that can be used in Salesforce Flows to copy text to clipboard.

## Features

- Configurable button label and style
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
   - Button Label: The text to display on the button
   - Button Variant: The style/color of the button (options: base, brand, neutral, success, destructive, text-destructive)
   - Value to Copy: The text that will be copied when the button is clicked

### Button Variants
- `base`: Standard button style
- `brand`: Primary brand color (Salesforce blue)
- `neutral`: Neutral gray color
- `success`: Success green color
- `destructive`: Destructive red button
- `text-destructive`: Destructive text style

## Development

```bash
npm install
npm run lint
npm run test:unit
```

## License

MIT

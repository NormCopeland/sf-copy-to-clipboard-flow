# Create the component files
touch force-app/main/default/lwc/copyToClipboardFlow/copyToClipboardFlow.html
touch force-app/main/default/lwc/copyToClipboardFlow/copyToClipboardFlow.js
touch force-app/main/default/lwc/copyToClipboardFlow/copyToClipboardFlow.js-meta.xml

# Create a .gitignore file
echo "# Salesforce / SFDX
.sf/
.sfdx/
.localdevserver/
deploy-options.json

# IDEs
.idea/
.vscode/
*.iml
*.iws
*.sublime-project
*.sublime-workspace

# System Files
.DS_Store
Thumbs.db

# Node.js
node_modules/
npm-debug.log
yarn-debug.log
yarn-error.log

# Logs
logs
*.log

# Environment Variables
.env" > .gitignore

# Create package.json
echo '{
  "name": "sf-copy-to-clipboard-flow",
  "version": "1.0.0",
  "description": "Salesforce LWC component for copying text to clipboard in Flow",
  "scripts": {
    "lint": "eslint **/{lwc,aura}/**",
    "test": "npm run test:unit",
    "test:unit": "sfdx-lwc-jest",
    "test:unit:watch": "sfdx-lwc-jest --watch",
    "test:unit:debug": "sfdx-lwc-jest --debug"
  },
  "author": "",
  "license": "MIT",
  "devDependencies": {
    "@salesforce/eslint-config-lwc": "^3.5.2",
    "@salesforce/sfdx-lwc-jest": "^1.4.1",
    "eslint": "^8.45.0"
  }
}' > package.json

# Create README.md
echo "# Salesforce Copy to Clipboard Flow Component

A Lightning Web Component (LWC) that can be used in Salesforce Flows to copy text to clipboard.

## Features

- Configurable button label
- Copies specified text to clipboard
- Shows toast notification on success/failure
- Can be used in Screen Flows

## Installation

1. Clone this repository
2. Deploy to your Salesforce org:
   \`\`\`bash
   sfdx force:source:deploy -p force-app
   \`\`\`

## Usage

1. Add the component to a Screen Flow
2. Configure:
   - Button Label
   - Value to Copy

## Development

\`\`\`bash
npm install
npm run lint
npm run test:unit
\`\`\`

## License

MIT" > README.md

# Create sfdx-project.json
echo '{
  "packageDirectories": [
    {
      "path": "force-app",
      "default": true
    }
  ],
  "name": "sf-copy-to-clipboard-flow",
  "namespace": "",
  "sfdcLoginUrl": "https://login.salesforce.com",
  "sourceApiVersion": "58.0"
}' > sfdx-project.json

# Initialize npm project and install dependencies
npm init -y
npm install --save-dev @salesforce/eslint-config-lwc @salesforce/sfdx-lwc-jest eslint

# Make initial commit
git add .
git commit -m "Initial commit with project structure"

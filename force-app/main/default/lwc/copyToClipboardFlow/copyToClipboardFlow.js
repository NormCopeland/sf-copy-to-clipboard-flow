import { LightningElement, api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CopyToClipboardFlow extends LightningElement {
    @api buttonLabel = 'Copy to Clipboard';
    @api buttonVariant = 'brand';
    @api valueToClip = '';

    async handleClick() {
        try {
            await navigator.clipboard.writeText(this.valueToClip);
            
            // Show success toast
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success',
                    message: 'Text copied to clipboard!',
                    variant: 'success'
                })
            );
        } catch (err) {
            // Show error toast if copying fails
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error',
                    message: 'Failed to copy text to clipboard',
                    variant: 'error'
                })
            );
            console.error('Failed to copy text: ', err);
        }
    }
}

import { LightningElement, track } from 'lwc';

export default class ExcelStyleUI extends LightningElement {
    @track rows = [];
    @track columns = [
        { label: 'Name', fieldName: 'name' },
        { label: 'Email', fieldName: 'email' },
        { label: 'Phone', fieldName: 'phone' },
        { label: 'Company', fieldName: 'company' },
    ];

    // Initialize your data in the connectedCallback or wherever appropriate

    getCellData(rowId, colName) {
        const row = this.rows.find(row => row.id === rowId);
        return row ? row[colName] : '';
    }

    handleChange(event) {
        const rowId = event.target.dataset.rowId;
        const colName = event.target.dataset.colId;
        const newValue = event.target.value;

        // Update the data in your rows array based on rowId and colName
        // This logic is not shown here, but you should update your data accordingly

        // Example: 
        // Find the row by rowId and update the value for colName
        const updatedRows = this.rows.map(row => {
            if (row.id === rowId) {
                return { ...row, [colName]: newValue };
            }
            return row;
        });

        this.rows = updatedRows;
    }
}
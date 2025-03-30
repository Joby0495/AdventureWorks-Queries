# Restoring the AdventureWorks Database

## Download
- **URL**: [https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)
- **File**: `AdventureWorks2012.bak`
- Action: Download to your server or local machine.

## Restore Steps in SSMS
1. Open SQL Server Management Studio (SSMS) and connect to your SQL Server instance.
2. Right-click "Databases" in Object Explorer, select **Restore Database**.
3. Choose **Device**, click `...`, then **Add**.
4. Locate and select `AdventureWorks2012.bak`, click **OK**.
5. (Optional) Adjust data and log file locations in the "Files" pane.
6. Click **OK** to restore. The database will appear once complete.

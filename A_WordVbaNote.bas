'不需在VBA環境下輸入此程式碼，直接修改模組名稱即可
Attribute VB_Name = "A_WordVbaNote"
Sub note()
'最後一頁
lastpage = ActiveDocument.ComputeStatistics(wdStatisticPages)

'換行
    Selection.InsertBreak Type:=wdPageBreak '換行
    
'到最後一頁最後一段
    Selection.EndKey Unit:=wdStory
    
    
''不限WORD VB都可''

'輸出的資料夾
    Dim xDlg As FileDialog
    Dim xFolder
    Set xDlg = Application.FileDialog(msoFileDialogFolderPicker) '也可選其他檔案
        xDlg.Title = "請選擇要輸出的資料夾"

'選擇要輸出的資料夾，有選到就存成變數
If xDlg.Show <> -1 Then Exit Sub
xFolder = xDlg.SelectedItems(1)
End If

'看看長啥樣
Debug.Print xFolder

    
End Sub



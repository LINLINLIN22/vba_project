Attribute VB_Name = "A_WordVbaNote"
Sub note()
'�̫�@��
lastpage = ActiveDocument.ComputeStatistics(wdStatisticPages)

'����
    Selection.InsertBreak Type:=wdPageBreak '����
    
'��̫�@���̫�@�q
    Selection.EndKey Unit:=wdStory
    
    
''����WORD VB���i''

'��X����Ƨ�
    Dim xDlg As FileDialog
    Dim xFolder
    Set xDlg = Application.FileDialog(msoFileDialogFolderPicker) '�]�i���L�ɮ�
        xDlg.Title = "�п�ܭn��X����Ƨ�"

'��ܭn��X����Ƨ��A�����N�s���ܼ�
If xDlg.Show <> -1 Then Exit Sub
xFolder = xDlg.SelectedItems(1)
End If

'�ݬݪ�ԣ��
Debug.Print xFolder

    
End Sub



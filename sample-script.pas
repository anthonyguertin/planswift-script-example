Var
  MyForm: TForm;
  MyComboBox: TComboBox;

Procedure MyComboBox_OnSelect(Sender: TObject);
var
  cbx: TComboBox;
begin
    cbx := TComboBox(Sender);
    showmessage(cbx.Name);
end;

Function MyDialogExecute(Caption: String): Boolean;
Begin
  MyForm := NewForm(300, 300, Caption);

  MyComboBox := NewCombobox(20, 170, 'Select One');
  MyComboBox.Width := 260;
  MyComboBox.Name := 'testName';
  MyCombobox.items.Add('Option 1');
  MyComboBox.Items.Add('Option 2');
  MyComboBox.OnSelect := 'MyComboBox_OnSelect';

  MyButton1 := NewButton(60, 220, 'OK', mrOK);
  MyButton2 := NewButton(160, 220, 'Cancel', mrCancel);

  Result := MyForm.ShowModal = mrOK;
End;

Begin
  MyDialogExecute('Hey Man!!!');
End;
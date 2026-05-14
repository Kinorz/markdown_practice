Sub test()

    Dim i As Integer
    Dim startNum As Integer
    Dim endNum As Integer

    startNum = InputBox("開始番号")
    endNum = InputBox("終了番号")

    ' 49 → 50 ～ 36 → 37
    For i = 49 To 36 Step -1

        If i >= startNum And i < endNum Then

            Cells.Replace _
                What:=ChrW(&H32B1 + (i - 36)), _
                Replacement:=ChrW(&H32B1 + (i - 35))

        End If

    Next

    ' 35 → 36
    If 35 >= startNum And 35 < endNum Then

        Cells.Replace _
            What:=ChrW(&H325F), _
            Replacement:=ChrW(&H32B1)

    End If

    ' 34 → 35 ～ 21 → 22
    For i = 34 To 21 Step -1

        If i >= startNum And i < endNum Then

            Cells.Replace _
                What:=ChrW(&H3251 + (i - 21)), _
                Replacement:=ChrW(&H3251 + (i - 20))

        End If

    Next

    ' 20 → 21
    If 20 >= startNum And 20 < endNum Then

        Cells.Replace _
            What:=ChrW(&H2473), _
            Replacement:=ChrW(&H3251)

    End If

    ' 19 → 20 ～ 1 → 2
    For i = 19 To 1 Step -1

        If i >= startNum And i < endNum Then

            Cells.Replace _
                What:=ChrW(&H2460 + (i - 1)), _
                Replacement:=ChrW(&H2460 + i)

        End If

    Next

End Sub


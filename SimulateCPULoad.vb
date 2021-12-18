    Sub Main()

        ' This is far from perfect but better than nothing. More inaccurate at smaller iTimeTaken values.

        Const iTimeTaken = 6 ' CPU load in miliseconds, don't use smaller values than 5ms
        Const iTimeWait = 150 ' Alotted wait time
        Dim iCount As Long = 0
        Dim iMS As Integer = 0

        Console.WriteLine("Started benchmark @ " & Now.ToString)
        Console.WriteLine("Simulation load of " & iTimeTaken & " miliseconds.")
        Console.WriteLine("Alotted sleep time: " & iTimeWait & ".")

        Do
            If Now.Millisecond > (995 - iTimeTaken) Then Threading.Thread.Sleep(iTimeTaken + 1) ' 1 ms here and there, really...
            iMS = Now.Millisecond

            While ((Now.Millisecond - 5) <= iMS)
                iCount = 0
                For N = 0 To 9999 ' Hogs cpu for a small bit, need to be rerun several times
                    iCount = iCount + 1
                Next
            End While

            Threading.Thread.Sleep(iTimeWait)
        Loop

    End Sub

(loop-for-string (?cnt1 2 4) do
    (loop-for-string (?cnt2 1 3) do
        (printout t ?cnt1 " " ?cnt2 crlf)))
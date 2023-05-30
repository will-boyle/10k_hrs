Function AddYearsToDate(yearsToAdd As Double) As Date
    Dim todayDate As Date
    Dim wholeYears As Long
    Dim remainingDays As Double
    Dim newDate As Date
    
    ' Get today's date
    todayDate = Date
    
    ' Split the years into whole years and remaining days
    wholeYears = Fix(yearsToAdd)
    remainingDays = (yearsToAdd - wholeYears) * 365.25
    
    ' Add the whole years to the date
    newDate = DateAdd("yyyy", wholeYears, todayDate)
    
    ' Add the remaining days
    newDate = DateAdd("d", remainingDays, newDate)
    
    ' Return the new date
    AddYearsToDate = newDate
End Function
Function PerformCalculation(int1 As Long, int2 As Long, int3 As Long) As Double
    Dim int4 As Long
    Dim int5 As Long
    Dim int6 As Long
    Dim result As Double
    
    ' Set the fixed integers
    int4 = 3
    int5 = 7
    int6 = 1998
    
    ' Perform the calculation: (int1 * 30 + int2 + int3 * 360) - (int4*30 + int5 + int6 * 360)
    result = ((int1 * 30 + int2 + int3 * 360) - (int4 * 30 + int5 + int6 * 360)) / 365
    
    ' Return the result
    PerformCalculation = result
End Function

$text = @"
On June 15, 2023, at 10:30 AM, John Smith sent an email to jane.doe@email.com with the subject "Meeting Agenda." In this email, he included a link to the company's website: https://www.example.com.
The meeting is scheduled for July 5, 2023, at 2:00 PM at 123 Main Street, New York City. Please confirm your attendance by replying to this email or calling me at +1 (555) 123-4567.
During the meeting, we will discuss our quarterly sales report, which you can find attached as "Q2_2023_Sales_Report.pdf." Please review it before the meeting.
In addition to the sales report, we will also discuss the launch of our upcoming project scheduled for August 10, 2023, along with the associated deadlines. Project details can be accessed at https://www.example.com/project123.
I would like to introduce our new team member, Emily Johnson, who joined us on September 1, 2023. She will be working on the marketing campaign for our new product.
Please come prepared with any questions or suggestions you may have. Let’s ensure this meeting is both productive and efficient.
Best regards,
John Smith
On November 25, 2023, at 3:45 PM, Sarah Williams received an invitation to an event at contact@eventplanners.com. The event will take place on December 10, 2023, at 7:00 PM at the luxurious Grand Plaza Hotel in Los Angeles, located at 456 Event Avenue.
The event website, where you can RSVP and find more details, is https://www.eventplanners.com/winter-gala-2023.
Sarah's friend, Mark Johnson, will be the keynote speaker at the event. Mark is a renowned expert in the field of artificial intelligence.
During the gala, there will be a charity auction featuring exclusive items, including a weekend getaway at a picturesque mountain resort valued at $1,500 and a rare collectible watch.
To attend the gala, you can purchase tickets at https://www.eventplanners.com/tickets. Early bird pricing is available until November 30, 2023.
If you have any questions or need assistance, please don’t hesitate to reach out to our event coordinator, Emily Parker, at emily.parker@eventplanners.com or by calling (123) 456-7890.
We look forward to seeing you at the Winter Gala 2023!
Best regards,
Sarah Williams
"@

# Function to find and output dates
function Find-Dates {
    $pattern = '\b[A-Za-z]+ \d{1,2}, \d{4}\b'
    Write-Output "Dates:"
    $matches = [regex]::Matches($text, $pattern)
    $matches | ForEach-Object { $_.Value }
}

# Function to find and output times
function Find-Times {
    $pattern = '\b\d{1,2}:\d{2} (AM|PM)\b'
    Write-Output "Times:"
    $matches = [regex]::Matches($text, $pattern)
    $matches | ForEach-Object { $_.Value }
}

# Function to find and output email addresses
function Find-Emails {
    $pattern = '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
    Write-Output "Email Addresses:"
    $matches = [regex]::Matches($text, $pattern)
    $matches | ForEach-Object { $_.Value }
}

# Function to find and output URLs
function Find-URLs {
    $pattern = 'https?://[a-zA-Z0-9./?=_-]+'
    Write-Output "URLs:"
    $matches = [regex]::Matches($text, $pattern)
    $matches | ForEach-Object { $_.Value }
}

# Function to find and output names
function Find-Names {
    $pattern = '\b[A-Z][a-z]+\s[A-Z][a-z]+\b'
    Write-Output "Names:"
    $matches = [regex]::Matches($text, $pattern)
    $matches | ForEach-Object { $_.Value }
}

# Call the functions to output the data
Find-Dates
Find-Times
Find-Emails
Find-URLs
Find-Names



#!/bin/bash
find_dates(){
echo "Dates:"
echo "$text" | grep -oE '[A-Za-z]+ [0-9]{1,2}, [0-9]{4}'
}
find_times(){
echo "Times:"
echo "$text" | grep -oE '[0-9]{1,2}:[0-9]{2} (AM|PM)'
}
find_emails(){
echo "Emails:"
echo "$text" | grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
}
find_urls(){
echo "Urls:"
echo "$text" | grep -oE 'https?://[a-zA-Z0-9./?=_-]+'
}
find_names(){
echo "Names:"
echo "$text" | grep -oE '[A-Z][a-z]+ [A-Z][a-z]+'
}
main(){
find_dates
find_times
}
find_emails
find_urls
find_names
text="On June 15, 2023, at 10:30 AM, John Smith sent an email to
jane.doe@email.com with the subject 'Meeting Agenda.' In the email, he
included a link to the company's website: https://www.example.com.
The meeting is scheduled for July 5th, 2023, at 2:00 PM at 123 Main Street,
New York City. Please confirm your attendance by replying to this email or
calling me at +1 (555) 123-4567.
During the meeting, we will discuss our quarterly sales report, which you can
find attached as 'Q2_2023_Sales_Report.pdf.' Please review it before the
meeting.
In addition to the sales report, we will also talk about our upcoming project
launch on August 10, 2023, and the associated deadlines. The project details can
be accessed at https://www.example.com/project123.
I'd like to introduce our new team member, Emily Johnson, who joined us on
September 1, 2023. She will be working on the marketing campaign for our new
product.
Please come prepared with any questions or suggestions you may have. Let's
make this meeting productive and efficient.
Best regards,
John Smith"
main

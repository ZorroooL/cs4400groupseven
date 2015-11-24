# Georgia Tech Career Service System (GTCareer) #

GTCareer is a system that is used to help employers meet employees. The system has two types of users: **Administrator** and **Customers**. The administrator's main task is to take care of the overall usage reports (for example, the number of applications in each month). A new customer has to register with a unique email address (which will be used as his/her username). There are two types of customers: **Recruiters** and **Applicants**. A recruiter can post, update, and delete **jobs**, and search for applicants with specific qualifications. An applicant can update his own profile, search for jobs, and apply for jobs.

The regular job searching process goes as follows. A recruiter (call him Richard) starts the process by posting a new job along with some details. He also has to specify the _number of positions_ needed and what _kind of test_ is required for this job. After it is posted, this job will be seen and can be searched by applicants. Suppose an applicant (call her Alice) decides to apply for this job. This job will be shown on her main page with _status_ "in test process." She can always log into the system and check the status of this job.

When Richard later checks the list of applicants on his main page, he will see Alice's name on the list. After giving Alice a test (which is done outside the system), Richard will put Alice's _score_ into the system and decide to either _advance_ her to the interview process or _decline_ her. Alice will now see her new application status on her main page ("declined" or "in interview process").

The interview process will be done outside the system. Once done, Richard can come back to the system and either decline or advance Alice. Again, Alice can check her application status on her main page ("declined" or "accepted").

Once the number of accepted applicants of this job reaches the specified number of positions, the job will be automatically closed by the system and all applicants that are still in process (not yet declined or accepted) will be automatically declined.

Sometimes, the process might be slightly different. For example, a job might not need a test. In this case, an applicant who applies will be automatically in the interview process.
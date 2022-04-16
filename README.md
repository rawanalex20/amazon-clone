# Amazon Clone

## Description

A simple clone of amazon app to implement rails routes and use active mailer, jobs and storage

## Versions

ruby 3.1.0<br>
Rails 7.0.1

## Dependencies

System dependencies can be found in the gemfile in the root folder. Make sure the latest versions of the following tools are installed:

- Ruby
- Rails
- Sqlite3

### Installation

Run the following command in the root directory to install all required gems<br>
`bundle install`

## Testing

Run the following command to initialize the local server<br>
`rails s`

### Mailhog Setting

To test mails install mailhog and check the right address and port used are added in developement environment settings

Follow [Installation guide](https://github.com/mailhog/MailHog)

## Email Samples
<br>

## Inbox

Welcome email sample to new user
<br>
---

![User mail in html](/images/user-mail-html.png)

---

![User mail in plain text](/images/user-mail-text.png)

<br>

New item email sample to all users
<br>
---

![Item mail in html](/images/item-mail-1-html.png)

---

![Item mail in plain text](/images/item-mail-1-text.png)

---

![Item mail in html](/images/item-mail-2-html.png)

---

![Item mail in plain text](/images/item-mail-2-text.png)
 
<br>
Daily summary email
<br>
---

![Summary mail in html](/images/summary-html.png)

---

![Summary mail in plain text](/images/summary-text.png)
<br>

## Preview Emails
Preview all preview emails at `http://localhost:3000/rails/mailers/<mailer-name>_mailer`

Welcome email preview
<br>
---

![User mail preview in html](/images/user-mail-preview-html.png)

---

![User mail preview in plain text](/images/user-mail-preview-text.png)
<br>

New item email preview
<br>
---

![Item mail preview in html](/images/item-mail-preview-html.png)

---

![Item mail preview in plain text](/images/item-mail-preview-text.png)
<br>

Daily summary email preview
<br>
---

![Summary mail preview in html](/images/summary-preview-html.png)

---

![Summary mail preview in plain text](/images/summary-preview-text.png)



quote-o-matic
=============

TopGun Quote-O-Matic

### Installation

- Fork Repository
- Clone Repository
- Install All The Things: `bundle exec bundle install`
- Create Database: `bundle exec rake db:create`
- Start The Server: `bundle exec rails s`

### Creating and Viewing a new Page

- create `app/views/pages/[page_name].html.haml`
- go to `localhost:3000/pages/[page_name]`



Database Structure Ideas
========================

#### User

- **role_id** *(agent, manager)*
- **default_type_id** *(default: solutions fuse)*

#### Quote

- **id**
- **agent_id** *(agent who is creating this quote aka currently logged in user)*
- **reseller_id** *(assocaiton to reseller model)*
- **company_id** *(Pulled from Sales Logix)*
- **contact_id** *(Pulled from Sales Logix ~ Must have Email)*
- **opportunity_id** *(Pulled from Sales Logix)*
- **status** *(pending, approved, declined, sent, complete)*
- **approved_date**
- **declined_date**
- **sent_date**
- **completed_date**

- After Create:
  - Email Sent to: [themed as reseller]
    - Internal (notifcation)
    - Reseller (notifcation)
    - Customer (action necessary)
      - Accepts

- After Customer Accepts:
  - Email Sent to: [themed as reseller]
    - Internal (notifcation)
    - Reseller (action necesssary)
      - Confirm (links to page where reseller can edit order and then complete)
      - Dencline (?)

#### QuoteItems

- **id**
- **quote_id**
- **item_sku** *(from Sales Logix)*
- **quantity**

#### Reseller (Admin)
 sky
- **id**
- **name**
- **type_id**
- **logo_url** *(amazon s3 or stored local on server)*
- **email**
- **phone**
- **address**
- text stuff

#### ResellerItemCost (CSV Import)

- **item_sku** *(from Sales Logix)*
- **price**

#### Type

- id
- name (Top Gun, Solutions Fuse)

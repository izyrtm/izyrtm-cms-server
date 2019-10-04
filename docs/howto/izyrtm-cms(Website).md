# How to Use CMS Web Site

1. izyrtm CMS Server는 Monbot에서 생성된 Token을 RTM과 연결하여 이상징후 발생 시, 등록된 대화창에 지정된 사용자들에게 알림기능을 제공합니다. 
2. Grafana에서 생성한 모니터링 대쉬보드를 APP sub stream 상황창에서 실시간으로 받을 수 있도록 RTM과 연결 할 수 있습니다.
  * [Go to CMS Web Site](http://localhost:8088/main)
    ![Main](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-main.png)


## Git
  * [izyrtm-cms-server](https://github.com/izyrtm/izyrtm-cms-server)

## Get the app

you can [download an
    APK](https://github.com/izyrtm/izyrtm-mobile/releases)
    from the official build we post on GitHub.


## Starter
 1. Monbot WebSite를 통해 USER Bot Token을 생성합니다.
    * [How to Create User Bot](docs/howto/izyrtm-server(Monbot).md)
    ![Bot Token](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-setting-bottoken.png)

 2. Grafana를 이용하여 제공받을 Dashboard를 생성합니다.
    * [How to Create Dashboard](docs/howto/izyrtm-server(dashboard).md)
      ![Dashboard](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_main(afterSetting).png)


## Function
### Menu
  1. USER Bot과 RTM을 연결하고 수정 및 삭제를 할 수 있습니다.
  
  2. RTM과 미리 구성한 Grafana Dashboard와 연결하고 수정 및 삭제를 할 수 있습니다.
    ![Menu](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-menu.png)

### RTM SCREENS
#### **RTM List**
  1. 등록된 RTM List를 보여줍니다.
     ![List](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-rtm-list.png)
  2. 등록하기 버튼을 통해 새로운 RTM과 USER Bot 연결을 등록할 수 있습니다.
  3. 등록된 List를 클릭하여 수정 및 삭제를 할 수 있습니다.
    ![Update](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-rtm-update.png)

#### **RTM Register**
  1. Monbot 사이트에서 만든 USER Bot Token과 RTM을 연결할 수 있도록 항목을 신규로 생성합니다.
     ![Register](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-rtm-insert.png)

 ##### 항목 설명
  - RTM Key : RTM(서버) 생성 시, RTM의 Key를 입력 하세요.
  - **RTM Token**: USER Bot에서 생성한 Token을 입력하세요. 향후 해당 Token을 사용하여 문제 발생 시 Bot이 Stream에 알림을 줍니다.
   <u>Your Bot 생성 후 "API KEY"를 넣어주시면 됩니다.</u>
    ![your Bot](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/server-yourbot.png)
  - Title : 항목의 title
  - RTM Type
    1) General Notification : 일반 공지
    2) Dashboard : Dashboard를 stream에 보여주는 RTM
    3) Health Check : 서비스 체크와 같은 간단한 Check 알림 Type
  - **Topic Name** : sub Stream의 Topic을 넣어 주세요.
   <u>향 후 해당 sub stream에 알림이 처리 됩니다.</u>
     ![sub stream](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/server-stream.png)
  - Noti User : 방이 개설 되면서 _추가될 구성원들의 email 정보_ 를 입력하세요.

### APM SCREENS
#### **APM List**
  1. 등록된 Monitering Dash보드와 RTM이 연결된 List를 보여줍니다.
     ![List](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-apm-list.png)

  2. 등록하기 버튼을 통해 새로운 RTM과 Dashboard연결을 등록할 수 있습니다.

  3. 등록된 List를 클릭하여 수정 및 삭제를 할 수 있습니다.
    ![Update](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-apm-update.png)

#### **APM Register**
  1. Grafana에서 생성한 모니터링 대쉬보드를 APP sub stream 상황창에서 실시간으로 받을 수 있도록 RTM과 연결 할 수 있습니다.
    ![Register](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-apm-insert.png)
    ![APP](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotApp/monbot-app-rtm.JPG)
    ![APP](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotApp/monbot-app-grafana.JPG)

 ##### 항목 설명
  - Dashboard Key : 사이트 내에서 관리할 ID를 입력하세요.
  - **Dashboard ID**: Grafana에서 생성한 Dashboard Id를 입력하세요.
    <u> 향후 해당 Dashboard가 캡춰되어 Stream에 전달되며, 실시간으로 연결도 됩니다.</u>
  - Title : 항목의 title
  - Org Id : Grafana에서 생성한 ~
  - **Panel ID**: Grafana에서 생성한 Dashboard에 속한 각각의 Panel 중 하나의 ID를 입력하세요.
    <u> 향후 해당 Panel만 캡춰되어 Stream에 전달될 수 있습니다.</u>
  - **RTM Key**: 이미 등록된 연결할 RTM의 Key를 입력하세요.
    **<u>여기서 연결이 되어야지만 Dashboard가 등록된 stream으로 알림 될 수 있습니다.</u>**

### Copyright and License 
Copyright 2013-2019 Blackrock Digital LLC. Code released under the MIT license.


## How To Use for User
User Bot Token과 Dashboard를 생성 후 연결하는 방법을 아래파일에서 확인 하실 수 있습니다.
 * [How to Use Mobile](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-chat(mobile).md)
 * [How to Use CMS Site](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)
 * [How to Use Monbot Site](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-server(Monbot).md)
 * [How to Use Dashboard](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-server(dashboard).md)



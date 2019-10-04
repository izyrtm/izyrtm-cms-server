# izyrtm-cms-server

[![List Register](hhttp://localhost:8088/rtmList)](http://localhost:8088/rtmInsert)
[![Monbot chat](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://monbot.hopto.org/#)

izyrtm CMS Server는 izyMessage에서 생성된 Token을 RTM과 연결하여 이상징후 발생 시, 등록된 대화창에 지정된 사용자들에게 알림기능을 제공합니다. 

=======
# How to Use Monbot Website

Monbot Website는 APP에서 제공하는 기능들과 더불어 Stream을 관리할 수 있습니다.
Stream 관리 뿐만 아니라 RTM과 연결되는 Bot의 Token을 생성하여 사용할 수 있는 **Chat + Admin**의 Web Site입니다.

## Git
  * [izyrtm-server](https://github.com/izyrtm/izyrtm-server)

## Get the app

you can [download an
    APK](https://github.com/zulip/zulip-mobile/releases/latest)
    from the official build we post on GitHub.

## Starter
  1. Monbot WebSite 접속 
     * [monbot web](https://monbot.hopto.org/login/#)

  2. 로그인하여 Monbot에 참여합니다.
     ![login](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-login.png)

## Function
 Web에서는 Stream 생성 및 관리, User 관리 등의 다양한 기능을 제공하고 있습니다.
 **APP에서 보여지는 Stream을 그대로 확인 할 수 있으며** 더 많은 기능들이 존재
 합니다.

### Stream(chat)
  **1. Stream**
   내가 포함된 이미 개설된 Chat과 개별 대화 및 stream을 개별로 만들어 사용가능    합니다.
    ![main](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-main.png)

  **2. Add Stream**
   - APP에서 제공하는 것과 같이 내가 속한 Stream과 전체 Stream을 볼 수 있습니다.
     ![App Stream](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-addstream.png)

   - **Create stream을 통해 새로운 Stream을 생성**할 수 있으며, People to Add를 통하여 최초 참여자를 지정할 수 있습니다.
     ![Create Stream](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-createstream.png)

 **#####sub stream**
  1. 하나의 stream(channel)에 Sub Stream이 생성할 수 있으며 팀별 / 주제별 
     Stream을 생성 할 수 있습니다.
  
  2. 미리 등록해 놓은 RTM을 BOT에 연결 시, "이상징후" / "문제알림" 과 같은 sub의 stream이 생겨납니다.
      ![sub Stream](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-substream.png)

  3. sub stream 별로 이곳에서 [cms web](http://localhost:8088/main)  설정한 실시간 모니터링 화면 및 연결된 RTM에서 자동으로 방이 생성됩니다. 
     * [How to Create Connect RTM](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)


### USERS
  1. invite more users
     Stream에 user를 초대 할 수 있습니다.
     ![invite users](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-inviteusers.png)

  2. Settings를 통해 Stream에 참여하는 membership을 관리 할 수 있습니다.
     *APP에서는 user에 대한 설정을 별도로 할 수 없어, **Web Site에서만 가능**합니다.*
     ![setting users](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-settinguser.png)

## Setting
  1. 개인의 PROFILE과 ORGANIZATION PROFILE을 각각 설정 할 수 있습니다.
 **### your bots**
   **1. RTM과 Dashboard를 연결할 BOT을 생성할 수 있습니다.**
     ![Create Bot](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-setting-createbot.png)

   **2. your bots이 생성되면 Token이 발행되며 해당 Token을 RTM과 연결하여 자동 알림 기능을 받으실 수 있습니다.**
    ![Bot Token](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-setting-bottoken.png)

 #### Personal Settings
   - Account Setting
   - Display Setting
   - Notifications
   - **Your Bots**
   - Alert Words
   - Uploaded files
   - Muted topics등 사용하실 수 있습니다.
    ![Personal Settings](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-setting-profile.png)

 #### ORGANIZATION PROFILE
   - Organization profile
   - Custom emoji
   - User groups
   - Users
   - Deactivated users
   - **Bots**
     등을 사용하실 수 있습니다.
     monbot-setting-botList
      ![Organization Settings](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotWebsite/monbot-setting-botList.png)

## How To Use for User
User Bot Token과 Dashboard를 생성 후 연결하는 방법을 아래파일에서 확인 하실 수 있습니다.
 * [How to Use Mobile](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-chat(mobile).md)
 * [How to Use CMS Site](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)
 * [How to Use Monbot Site](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-server(Monbot).md)
 * [How to Use Dashboard](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-server(dashboard).md)

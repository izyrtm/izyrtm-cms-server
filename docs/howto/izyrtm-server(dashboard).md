# How to Use Dashboard
1. Grafana에서 Prometheus(프로메테우스)에서 수집한 데이터로 Panel을 생성하고 Dashboard를 구성 할 수 있습니다.
2. 여러개의 Panel을 생성하여 다양한 Dashboard를 만드세요.
3. **Dashboard를 구성하고 RTM과 연결하여 APP에서 알림을 받으세요.**
   * [How to Create Connect RTM](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)

![Dashboard](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_main(afterSetting).png)

![APP](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotApp/monbot-app-grafana.JPG)


## Git
  * [izyrtm-server](https://github.com/izyrtm/izyrtm-server)


## Get the app
you can [download an
    APK](https://github.com/izyrtm/izyrtm-mobile/releases)
    from the official build we post on GitHub.


## Starter
 1. Monitering **Prometheus(프로메테우스)** 에서 수집된 데이터로 Dashboard를 구성할 수 있습니다.

 2. Dashboard 및 Panel을 생성하기 위해 Web Site를 접속 합니다.
     * [Grafana web](https://monbot.hopto.org:3000/)

 3. 로그인하여 Dashboard 및 Panel을 구성합니다.
   ![login](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_login.png)


## Dashboard
 1. 새로운 Dashboard를 생성할 수 있습니다.
    ![Dashboard First](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_main(first).png)

 2. 여러개의 Panel(Resource)를 생성 및 추가하여 Dashboard를 구성할 수 있습니다.
    ![After Conf Dashboard](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_main(setting2).png)

 3. **CMS APM Screen에서 Dashboard ID를 등록하여 RTM과 연결**할 수 있습니다.
    * [How to Create Connect RTM](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)
    ![Register](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-apm-insert.png)

 4. 연결되는 서버에 따라, 등록하는 사용자가 원하는 Dashboard에 따라 **여러개의 Dashboard를 생성 및 관리** 할 수 있습니다.
    ![Dashboard List
    ](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_list.png)


## Panel
 1. Dashboard를 생성 후 Panel(Resource)를 생성 할 수 있으며, 해당 Panel이 모여 하나의 Dashboard를 구성합니다.
    ![Panel First](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_panelDetailFirst.png)

    ![After Conf Panel](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/dashBoard/dashboard_PanelDetail.png)

 2. **CMS APM Screen에서 Panel ID를 등록하여 RTM과 연결**할 수 있습니다.
    * [How to Create Connect RTM](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)
    ![Register](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/cms-apm-insert.png)

 3. 향후 izyrtm App의 Sub Stream에서 해당 스크린 샷을 받아 볼 수 있으며, **Site로 바로 이동 가능** 합니다.
    ![APP](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotApp/monbot-app-rtm.JPG)
    ![APP](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/monbotApp/monbot-app-grafana.JPG)


## How To Use for User
User Bot Token과 Dashboard를 생성 후 연결하는 방법을 아래파일에서 확인 하실 수 있습니다.
 * [How to Use Mobile](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-chat(mobile).md)
 * [How to Use Website](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)
 * [How to Use Monbot Site](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-server(Monbot).md)
 * [How to Use Dashboard](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-server(dashboard).md)

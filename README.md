# izyrtm-cms-server

[![Main Register](http://localhost:8088/main)](http://localhost:8088/rtmInsert)
[![Monbot chat](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://monbot.hopto.org/#)

izyrtm CMS Server는 izyMessage에서 생성된 Token을 RTM과 연결하여 이상징후 발생 시, 등록된 대화창에 지정된 사용자들에게 알림기능을 제공합니다. 



## Get the WebSite
### Using the Token

* [Monbot Chat](hhttps://monbot.hopto.org/#settings/your-bots)
  에서 Your Bot을 만드세요.

### Register RTM

* [RTM](http://localhost:8088/rtmInsert)
  에서 알림 받고 싶어하는 Message를 등록하고 문제 발생 시 지정된 사용자들에게 자동으로 채팅방을 개설할 수 있습니다.

### Register Monitering Dashboard

* [Monitering Dashboard](http://localhost:8088/mdmInsert)
  Prometheus(프로메테우스) / Grafana에서 생성한 모니터링 대쉬보드를 등록된 RTM과 연결하여 채팅방에서 실시간으로 받아보실 수 있습니다.


## Get the app

you can [download an
    APK](https://github.com/zulip/zulip-mobile/releases/latest)
    from the official build we post on GitHub.


## How To Use for User

User Bot Token과 Dashboard를 생성 후 연결하는 방법을 아래파일에서 확인 하실 수 있습니다.
 * [How to Use CMS Site](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/howto/izyrtm-cms(Website).md)


### History

izyrtm server, mobile에 대한 history
[izyrtm-server](https://github.com/izyrtm/izyrtm-server) and
[izyrtm-mobile](https://github.com/izyrtm/izyrtm-mobile)


## License
MIT License

Copyright (c) 2019 izyrtm

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

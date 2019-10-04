# Developer guide

## Starter
 **개발 환경** : macOS Mojave (버전 10.14.6)
 **[설치 순서]**
  1. Eclipse 설치
  2. Eclipse > Plugin > Spring 설치

## Setup
 **1. Eclipse설치**
   - 이클립스 홈페이지 접속
    * [eclipse 개발 툴 다운로드](http://www.eclipse.org/downloads/)
   - Get Eclipse IDE 2019-09 Download 64 bit 다운로드
     ![eclipse](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/setup-eclipse-javaEE.png)
     
     *Eclipse IDE for Java EE Developers 버전 > 설치파일 안에서 패키지로 선택*
   - 완료 후 LAUNCH
     ![launch](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/setup-eclipse-launch.png)
   
 **2. Eclipse > Spring 설치**
   - [상단메뉴] -> [Help] -> [Eclipse Marketplace]
     ![market](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/setup-sts.png)
   - <u>New Project > Spring Boot wizard</u>

## tips
  1. Packaging 기본은 "Jar"지만 웹 프로젝트는 "War"로 변경하여 프로젝트 생성
     ![market](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/tip-packaging.png)

  2. TYPE : gradle

## Hello World Develop
  1. New project
     - 상단 네모+를 눌러서  -> [wizard] Spring Boot  -> Spring Starter Project  -> Next

  2. Dependenies 설정 후 finish
     ![newproject](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/develop-newproject.png)

  3. View Page를 만들어 웹페이지에서 확인
     - View를 담당할 HelloController.java 생성
     ![View](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/develop-view.png)
     
   * package com.example.demo;
   * import org.springframework.web.bind.annotation.RequestMapping;
   * import org.springframework.web.bind.annotation.RestController;
   * @RestController
      * public class HelloController {
      * @RequestMapping("/")
      * public String moveIndexPage() {
      * return "Hello, Spring Boot";
      *   }
   * }

  4. 프로젝트 -> 우클릭 > Run As -> Spring Boot App
      ![View](https://github.com/izyrtm/izyrtm-cms-server/blob/master/docs/image/develop-Runas.png)

  5. localhost:8080
  
 
## Build Guide
 1. local Test
    - 프로젝트 -> 우클릭 > Run As -> Spring Boot App

 2. Server Build
    - /Users/lee-mac/Desktop/소스/eclipse/workspace/izyRtm/build/libs
    - file : izyRtm-0.0.1-SNAPSHOT.war
    - java -jar izyRtm-0.0.1-SNAPSHOT.war
  




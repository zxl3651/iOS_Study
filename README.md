# iOS_Study


## JeongDaeRi 아이폰 뽀개기 학습

### 1. [cocoapod 라이브러리를 활용해 lottie 애니메이션을 사용 실습](JeongDaeRi/iOS_Dev/NiceApp_02)
![Simulator Screen Recording - iPhone 15 Pro - 2023-09-29 at 19 51 06](https://github.com/zxl3651/iOS_Study/assets/94293365/55e99f38-ab7d-4c1f-a9d2-dd11f9a1d9af)

* cocoa pod을 이용해 애니메이션 라이브러리인 lottie 애니메이션을 프로젝트에 추가해보기!

### 2. [QR코드 인식 실습](JeongDaeRi/iOS_Dev/QRCodeTutorial_04)
![Simulator Screen Recording - iPhone 15 Pro - 2023-09-29 at 19 46 48](https://github.com/zxl3651/iOS_Study/assets/94293365/61cf280c-1bd5-4963-a348-ca80cc0c01b1)

* 애뮬레이터로 실행해서 QR코드 촬영 시 사진촬영이 안되지만 휴대폰으로 실행 시 정상 작동!

### 3. [if문 활용 실습](JeongDaeRi/iOS_Dev/if_grammer_05)
![Simulator Screen Recording - iPhone 15 Pro - 2023-09-29 at 19 31 51](https://github.com/zxl3651/iOS_Study/assets/94293365/298bf65d-9f37-4282-9f93-0bd474569a01)

* if문을 활용해 화면의 배경색을 바꿔줘보기!

### 4. [구글 애드몹 배너광고 달기 실습](JeongDaeRi/iOS_Dev/MyAdmobTest_06)
![Simulator Screen Recording - iPhone 15 Pro - 2023-09-29 at 21 47 38](https://github.com/zxl3651/iOS_Study/assets/94293365/4f30ad20-4ba4-4a5e-b7af-c2ee3d6c40a1)

* 구글 배너광고를 달아보기! 실제 앱을 출시한 후 admob을 등록하면 테스트 id가 아닌 광고 단위 id를 발급받아 실제로 광고를 할 수 있다!
  -> [ios 사용 과정 확인해보기](https://firebase.google.com/docs/admob/ios/quick-start?hl=ko)

### 5. [비동기 처리 실습](JeongDaeRi/iOS_Dev/CompletionBlock-Tutorial_07)
![Simulator Screen Recording - iPhone 15 Pro - 2023-09-30 at 21 46 29](https://github.com/zxl3651/iOS_Study/assets/94293365/8364511a-fea1-4290-a41c-bb2d99d6346f)

* 비동기 처리에 대해 이해하고 컴플레션 블럭을 통해 실습해보기!
* [Awesome Swift](https://github.com/matteocrippa/awesome-swift#pagination)를 활용해 [KRProgressHUD](https://github.com/krimpedance/KRProgressHUD) 프로그래스바를 사용했다!
* KRProgressHUD.show()를 통해 로딩중인 화면을 보여주고 비동기처리가 끝났을 때 KRProgressHUD.showSuccess()를 통해 로딩을 끝내고 Label의 text를 변경해주었다.

### 6 - 1. [탭바 컨트롤러 - Storyboard를 통한 실습](JeongDaeRi/iOS_Dev/TabBarController_Tutorial_with_storyboard_09)
![Simulator Screen Recording - iPhone 15 Pro - 2023-10-09 at 19 37 45](https://github.com/zxl3651/iOS_Study/assets/94293365/7c5b8f22-cf08-4be0-ab49-865828e4a59a)

* TabBarController를 통해 하단탭으로 화면을 옮기는 실습을 해봤다. 스토리보드를 사용해 간단하게 TabBarController를 생성 후 ViewController를 ctrl키로 연결하면 하단탭에 추가할 수 있다!

### 6 - 2. [탭바 컨트롤러 - Storyboard가 아닌 Code를 통한 실습](JeongDaeRi/iOS_Dev/TabBarController_No_storyboard_10)
![Simulator Screen Recording - iPhone 15 Pro - 2023-10-09 at 20 25 04](https://github.com/zxl3651/iOS_Study/assets/94293365/0b27111c-2926-426d-891f-0c763a7bacc1)

* SceneDelegate의 scene 함수 수정을 통해 코드로 WindowScene을 설정했다. 각 NavigationController를 init 함수로 생성해주고, 각 controller에 Item 설정을 통해 tabBarItem을 설정해서 하단탭에 추가할 수 있다!

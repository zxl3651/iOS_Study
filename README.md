# iOS_Study(각 토글을 통해 학습한 내용을 정리!)

<details>
  <summary>

## Apple SwiftUI Tutorials (SwiftUI) - 애플 공식 튜토리얼
    
  </summary>

## 1. SwiftUI Essentials

* SwiftUI를 사용하여 간단한 보기에서 풍부한 보기를 구성하고, 데이터 흐름을 설정하고, 내비게이션을 빌드하면서 Xcode의 미리 보기에서 펼쳐지는 것을 보는 방법을 알아보세요.

### Chapter1. Creating and combining views
* 뷰 만들기 및 결합하기
이 튜토리얼에서는 좋아하는 장소를 발견하고 공유할 수 있는 앱인 랜드마크를 구축하는 방법을 안내합니다. 먼저 랜드마크의 세부 정보를 보여주는 뷰를 빌드하는 것으로 시작합니다.

* 보기를 레이아웃하기 위해 랜드마크는 스택을 사용하여 이미지 및 텍스트 보기 구성 요소를 결합하고 계층화합니다. 뷰에 맵을 추가하려면 표준 MapKit 구성 요소를 포함합니다. 뷰의 디자인을 구체화할 때 Xcode는 실시간 피드백을 제공하므로 변경 사항이 코드로 변환되는 방식을 확인할 수 있습니다.

### Chapter2. Building lists and navigation
* 빌딩 목록 및 탐색
기본 랜드마크 상세 보기를 설정한 상태에서 사용자가 전체 랜드마크 목록을 보고 각 위치에 대한 세부 정보를 볼 수 있는 방법을 제공해야 합니다.

* 랜드마크에 대한 정보를 표시할 수 있는 보기를 만들고, 사용자가 탭하여 랜드마크의 상세 보기를 볼 수 있는 스크롤 목록을 동적으로 생성합니다. UI를 미세 조정하기 위해 Xcode를 사용하여 다양한 기기 크기에서 미리보기를 렌더링합니다.

### Chapter3. Handling user input
* 랜드마크 앱에서 사용자는 즐겨찾는 장소에 플래그를 지정하고 목록을 필터링하여 즐겨찾는 장소만 표시할 수 있습니다. 이 기능을 만들려면 먼저 사용자가 즐겨찾기에만 집중할 수 있도록 목록에 스위치를 추가한 다음, 사용자가 랜드마크를 즐겨찾기로 표시하기 위해 탭하는 별 모양 버튼을 추가합니다.

## 2. Drawing and Animation

* 도형과 경로를 그려서 애니메이션을 적용할 배지를 만들고 보기 간에 매끄러운 전환을 만드는 방법을 알아보세요.

### Chapter1. Drawing paths and shapes
* 사용자는 목록에 있는 랜드마크를 방문할 때마다 배지를 받습니다. 물론 사용자가 배지를 받으려면 배지를 만들어야 합니다. 이 튜토리얼에서는 경로와 도형을 결합하여 배지를 만든 다음 위치를 나타내는 다른 도형과 오버레이하여 배지를 만드는 과정을 안내합니다.

* 여러 종류의 랜드마크에 대해 여러 개의 배지를 만들려면 오버레이된 기호를 실험해 보고, 반복 횟수를 변경하거나 다양한 각도와 배율을 변경해 보세요.

### Chapter2. Animating views and transitions
* SwiftUI를 사용하면 효과의 위치에 관계없이 뷰 또는 뷰의 상태에 대한 변경 사항을 개별적으로 애니메이션할 수 있습니다. SwiftUI가 이러한 결합, 중첩 및 중단 가능한 애니메이션의 모든 복잡성을 처리합니다.

* 이 튜토리얼에서는 사용자가 랜드마크 앱을 사용하는 동안 하이킹을 추적하는 그래프가 포함된 뷰에 애니메이션을 적용하겠습니다. 애니메이션(_:) 수정자를 사용하면 뷰에 애니메이션을 적용하는 것이 얼마나 쉬운지 알 수 있습니다.

## 3. App Design and Layout

* SwiftUI로 구축된 보다 복잡한 인터페이스의 구조와 레이아웃을 살펴보세요.

### Chapter1. Composing complex interfaces
* 랜드마크의 카테고리 보기에는 가로로 스크롤되는 랜드마크 목록이 세로로 스크롤되어 표시됩니다. 이 보기를 작성하고 기존 보기에 연결하면서 다양한 기기 크기와 방향에 맞게 구성된 보기를 조정하는 방법을 살펴볼 수 있습니다.

### Chapter2. Working with UI controls
* 랜드마크 앱에서 사용자는 프로필을 만들어 자신의 개성을 표현할 수 있습니다. 사용자가 프로필을 변경할 수 있도록 편집 모드를 추가하고 환경설정 화면을 디자인할 수 있습니다.

* 데이터 입력을 위한 다양한 공통 사용자 인터페이스 컨트롤을 사용하여 작업하고 사용자가 변경 사항을 저장할 때마다 랜드마크 모델 유형을 업데이트할 수 있습니다.

## 4. Framework Integration

* 플랫폼별 UI 프레임워크의 뷰 및 뷰 컨트롤러와 함께 SwiftUI 뷰를 사용하세요.

### Chapter1. Interfacing with UIKit
* SwiftUI는 모든 Apple 플랫폼에서 기존 UI 프레임워크와 원활하게 작동합니다. 예를 들어, UIKit 뷰와 뷰 컨트롤러를 SwiftUI 뷰 안에 배치할 수 있으며, 그 반대의 경우도 마찬가지입니다.

* 이 튜토리얼에서는 홈 화면에서 추천 랜드마크를 변환하여 UIPageViewController 및 UIPageControl의 인스턴스를 래핑하는 방법을 보여줍니다. UIPageViewController를 사용하여 SwiftUI 뷰의 캐러셀을 표시하고 상태 변수와 바인딩을 사용하여 사용자 인터페이스 전체에서 데이터 업데이트를 조정합니다.

### Chapter2. Creating a watchOS App
* 이 튜토리얼은 SwiftUI에 대해 이미 배운 내용을 대부분 적용하고, 약간의 노력으로 랜드마크 앱을 watchOS로 마이그레이션할 수 있는 기회를 제공합니다.

* 먼저 프로젝트에 watchOS 타겟을 추가한 다음 iOS 앱용으로 만든 공유 데이터와 뷰를 복사합니다. 모든 에셋이 준비되면 watchOS에 세부 정보 및 목록 보기를 표시하도록 SwiftUI 보기를 커스터마이즈할 수 있습니다.

### Chapter3. Creating a macOS App
* watchOS용 랜드마크 앱 버전을 만들었다면 이제 더 큰 목표, 즉 랜드마크를 Mac으로 가져올 차례입니다. 지금까지 배운 모든 내용을 바탕으로 iOS, watchOS 및 macOS용 SwiftUI 앱을 빌드하는 경험을 마무리할 수 있습니다.

* 프로젝트에 macOS 타겟을 추가한 다음 이전에 만든 뷰와 데이터를 재사용하는 것으로 시작합니다. 기초를 다지고 나면 macOS에 맞춘 몇 가지 새로운 뷰를 추가하고 다른 뷰를 수정하여 여러 플랫폼에서 더 잘 작동하도록 할 수 있습니다.

</details>

<details>
  <summary>
    
  ## JeongDaeRi 아이폰 뽀개기 Study (UIKit)
  
  </summary>
    
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

</details>

<details>
  <summary>

## JeongDaeRi 스위프트UI 뽀개기 Study (SwiftUI)
    
  </summary>
</details>


<details>
  
  <summary>

## 핵심만 골라 배우는 SwiftUI 기반의 iOS 프로그래밍 교재 Study (SwiftUI)
    
  </summary>


### 1. [23장 SwiftUI 예제 튜토리얼](LikeLion/10.13(금)/SwiftUIDemo)

![Simulator Screen Recording - iPhone 15 Pro - 2023-10-13 at 18 02 16](https://github.com/zxl3651/iOS_Study/assets/94293365/15509dc2-4709-48dd-86a9-ac560a2c6420)

* 기본적인 SwiftUI 에서의 뷰, 수정자, 상태 변수, 몇 가지 기본적인 애니메이션 기술을 사용하여 상호작용하는 간단한 인터페이스 설계해보기!
* 레이아웃에 뷰들을 추가하는 다양한 방법, 상태 프로퍼티 바인딩과 수정자 사용, Spacer 및 Divider를 사용해 구성했다.

</details>

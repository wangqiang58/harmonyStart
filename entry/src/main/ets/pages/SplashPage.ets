import router from '@ohos.router'
import hilog from '@ohos.hilog'
import { RoutePath } from '../router/RoutePath'

@Entry
@Component
struct SplashPage {
  aboutToAppear() {
    hilog.debug(0x0000, "SplashPage", "aboutToAppear....")
    setTimeout(() => {
      hilog.debug(0x0000, "SplashPage", "setTimeout....")
      router.replaceUrl({ url: RoutePath.MainRouter })
    }, 5000)
  }

  aboutToDisappear() {
    hilog.debug(0x0000, "SplashPage", "aboutToDisappear....")

  }

  build() {
    Stack() {
      Image($r('app.media.landing_image')).objectFit(ImageFit.ScaleDown)
    }.width("100%").height("100%").backgroundColor($r("app.color.color_white")).alignContent(Alignment.Center)
  }
}
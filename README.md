## Device tree for Xiaomi 13 - Prebuilt


之前因为换 iPhone 14 Pro，所以不搞了。

Prebuilt 可以开机进系统， Build vendor 卡二。
 
#### 主要已知问题：

通话无声，光线传感器崩溃，震动服务，屏下指纹，人脸

#### 部分解决办法:

通话无声：https://github.com/AndyCGYan/android_packages_apps_QcRilAm/commit/a207520873a5c6ce051a43e4a9db3d8ded84ff9b

光线传感器崩溃：https://github.com/TrebleDroid/platform_frameworks_native/commit/a8db4d7f3412c5b21f33b70cedf35dba91261653

震动服务：https://github.com/TrebleDroid/platform_frameworks_native/commit/ee02331ca22c7afd68360ad507264c7d98d16e19

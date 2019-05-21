.class public final Lcom/android/camera/selfieflash/SelfieFlashModule;
.super Ljava/lang/Object;
.source "SelfieFlashModule.java"


# static fields
.field private static final SELFIE_FLASH_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T36ISR8CPNMUP26DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.selfie_flash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;S)V

    sput-object v0, Lcom/android/camera/selfieflash/SelfieFlashModule;->SELFIE_FLASH_FLAG$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T36ISR8CPNMUP26DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideSelfieFlashController(Ljavax/inject/Provider;Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/selfieflash/SelfieFlashController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;",
            ">;",
            "Lcom/android/camera/util/flags/Flags;",
            ")",
            "Lcom/android/camera/selfieflash/SelfieFlashController;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/selfieflash/NoOpSelfieFlashController;

    invoke-direct {v0}, Lcom/android/camera/selfieflash/NoOpSelfieFlashController;-><init>()V

    return-object v0
.end method

.method public static provideSelfieFlashControllerImpl(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/android/camera/ui/views/CameraUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/android/camera/ui/WindowBrightness;Landroid/content/res/Resources;)Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;
    .locals 12

    .prologue
    .line 50
    const-string v1, "default_scope"

    const-string v2, "pref_camera_selfie_flashmode_key"

    .line 51
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/Settings;->ofScopedBoolean$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v9

    .line 52
    const-string v1, "default_scope"

    const-string v2, "camera.startup_module"

    .line 53
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/Settings;->ofScopedInteger$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v10

    .line 54
    new-instance v1, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;

    .line 56
    invoke-interface {p1}, Lcom/android/camera/util/lifetime/ActivityLifetime;->getInstanceLifetime()Lcom/google/android/apps/camera/async/AddOnlyLifetime;

    move-result-object v2

    .line 57
    invoke-virtual {p2}, Lcom/android/camera/ui/views/CameraUi;->getShutterButtonHolder()Lcom/android/camera/ui/ShutterButtonHolder;

    move-result-object v3

    .line 58
    invoke-virtual {p2}, Lcom/android/camera/ui/views/CameraUi;->getCameraSwitchButton()Lcom/android/camera/widget/CameraSwitchButton;

    move-result-object v4

    .line 59
    invoke-virtual {p2}, Lcom/android/camera/ui/views/CameraUi;->getCaptureAnimationOverlay()Lcom/android/camera/ui/CaptureAnimationOverlay;

    move-result-object v5

    .line 60
    invoke-virtual {p2}, Lcom/android/camera/ui/views/CameraUi;->getShutterCancelButton()Lcom/android/camera/widget/DarkLightImageButton;

    move-result-object v6

    const v7, 0x7f0b0217

    const/4 v8, 0x0

    .line 65
    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;-><init>(Lcom/google/android/apps/camera/async/AddOnlyLifetime;Lcom/android/camera/ui/ShutterButtonHolder;Lcom/android/camera/widget/CameraSwitchButton;Lcom/android/camera/ui/CaptureAnimationOverlay;Lcom/android/camera/widget/DarkLightImageButton;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/WindowBrightness;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;->addObserver$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIKUOJJCLP7CPBI7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNMOQB2E9GN4QB5ECNN6T39EHHMGBRCD5J6AORPCDM6ABQCD5J6AORPCDM6AJR2EDIN4TJ5E8TG____(Lcom/android/camera/burst/BurstA11yButtonController$Listener;)Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 67
    return-object v1
.end method

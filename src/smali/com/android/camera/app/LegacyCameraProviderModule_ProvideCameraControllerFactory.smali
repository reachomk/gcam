.class public final Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;
.super Ljava/lang/Object;
.source "LegacyCameraProviderModule_ProvideCameraControllerFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final activityHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final androidServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;"
        }
    .end annotation
.end field

.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraDeviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/ActiveCameraDeviceTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/CameraDeviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/device/ActiveCameraDeviceTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->appContextProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->activityHandlerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->deviceTrackerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 48
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 14
    .line 1052
    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->appContextProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->activityHandlerProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->cameraDeviceManagerProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/device/CameraDeviceManager;

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->deviceTrackerProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/device/ActiveCameraDeviceTracker;

    iget-object v0, p0, Lcom/android/camera/app/LegacyCameraProviderModule_ProvideCameraControllerFactory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    .line 2039
    new-instance v0, Lcom/android/camera/app/LegacyCameraController;

    sget v4, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1$9HHMUR9FC5N68SJFD5I2UPBO5THM2RB5E9GJ4BRGDTP78OB2D5M6IT3P5T1M2RB5E9GK2PR5DPQ4COB3EHNN4U948DGMQPBIC50N0Q9R:I

    .line 2042
    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgentFactory;->getAndroidCameraAgent$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D666RRD5TGMSP3IDTKM8BR5F0NM6OBDCLP62CHFE1NN4T31C9KMOQBKF4NK6OBDCLP62GB7CLN78HJ1CDQ6USJP4H1M2RB5E9GK2S397CKKOORFDKNM2RJ4E9NMIP1FCLS2UOR1DLIN4O9I5TO6USJKC5H6IR39EHSIUGR1DLIN4OA1CTIMST1R(Landroid/content/Context;I)Lcom/android/ex/camera2/portability/CameraAgent;

    move-result-object v3

    const/4 v4, 0x0

    .line 2048
    invoke-virtual {v7}, Lcom/google/android/apps/camera/inject/app/AndroidServices;->provideDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/app/LegacyCameraController;-><init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/camera/device/CameraDeviceManager;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/app/admin/DevicePolicyManager;)V

    .line 1053
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1052
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/LegacyCameraController;

    .line 14
    return-object v0
.end method

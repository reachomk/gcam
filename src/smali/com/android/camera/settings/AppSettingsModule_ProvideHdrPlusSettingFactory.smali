.class public final Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvideHdrPlusSettingFactory.java"

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
.field private final cameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;->cameraManagerProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    .line 1027
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 1029
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/Settings;

    iget-object v1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvideHdrPlusSettingFactory;->cameraManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraManager;

    .line 1117
    sget-object v2, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->OFF:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->encodeSettingsString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v1, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v3

    .line 1121
    if-eqz v3, :cond_0

    .line 1123
    invoke-interface {v1, v3}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 1124
    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoHdrPlusSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    sget-object v1, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->AUTO:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    :goto_0
    new-instance v2, Lcom/android/camera/one/HdrPlusSetting;

    const-string v3, "pref_camera_hdr_plus_key"

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/settings/Settings;->ofString$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTIIJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/camera/one/HdrPlusSetting;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 1028
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1027
    invoke-static {v2, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/HdrPlusSetting;

    .line 10
    return-object v0

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

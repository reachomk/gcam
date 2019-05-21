.class public final Lcom/android/camera/module/capture/CaptureModuleCameraKey;
.super Ljava/lang/Object;
.source "CaptureModuleCameraKey.java"


# instance fields
.field private cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private hdrPlusMode:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 48
    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->hdrPlusMode:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    .line 49
    return-void
.end method

.method public static from(Lcom/android/camera/module/OneModuleConfig;Lcom/android/camera/one/HdrPlusSetting;Z)Lcom/android/camera/module/capture/CaptureModuleCameraKey;
    .locals 3

    .prologue
    .line 19
    new-instance v1, Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 1036
    if-eqz p2, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/android/camera/module/capture/CaptureModuleCameraKey;-><init>(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;)V

    .line 19
    return-object v1

    .line 1040
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/one/HdrPlusSetting;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    check-cast p1, Lcom/android/camera/module/capture/CaptureModuleCameraKey;

    .line 60
    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v3, p1, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->hdrPlusMode:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    iget-object v3, p1, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->hdrPlusMode:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->hdrPlusMode:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 65
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModuleCameraKey;->hdrPlusMode:Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

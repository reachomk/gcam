.class public final Lcom/android/camera/settings/PictureSizeLoader;
.super Ljava/lang/Object;
.source "PictureSizeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "PictureSizeLoader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/PictureSizeLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/camcorder/CamcorderManager;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/camera/settings/PictureSizeLoader;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 68
    iput-object p2, p0, Lcom/android/camera/settings/PictureSizeLoader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 69
    iput-object p3, p0, Lcom/android/camera/settings/PictureSizeLoader;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 70
    return-void
.end method

.method private final computeSizesForCamera(Lcom/android/camera/one/OneCamera$Facing;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCamera$Facing;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    iget-object v1, p0, Lcom/android/camera/settings/PictureSizeLoader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v1, p1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 106
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/android/camera/settings/PictureSizeLoader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 101
    invoke-interface {v2, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 102
    const/16 v2, 0x100

    invoke-interface {v1, v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v1

    .line 103
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/android/camera/settings/ResolutionUtil;->getDisplayableSizesFromSupported(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/camera/settings/PictureSizeLoader;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getBlacklistedResolutionsBack()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private final computeVideoQualitiesForCamera(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCamera$Facing;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/camera/settings/PictureSizeLoader;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/android/camera/settings/PictureSizeLoader;->camcorderManager:Lcom/android/camera/camcorder/CamcorderManager;

    .line 116
    invoke-interface {v3, v0}, Lcom/android/camera/camcorder/CamcorderManager;->getCamcorderCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    invoke-virtual {v0, v3}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->getSupportedVideoResolutions(Lcom/android/camera/camcorder/CamcorderCaptureRate;)Ljava/util/List;

    move-result-object v3

    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 124
    new-instance v4, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;

    invoke-direct {v4}, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;-><init>()V

    .line 126
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 126
    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->getValue()I

    move-result v0

    iput v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->large:I

    .line 128
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 128
    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->getValue()I

    move-result v0

    iput v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->medium:I

    .line 129
    const/4 v0, 0x2

    .line 130
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    invoke-static {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    .line 130
    invoke-virtual {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->getValue()I

    move-result v0

    iput v0, v4, Lcom/android/camera/settings/SettingsUtil$SelectedVideoQualities;->small:I

    .line 131
    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    goto :goto_1

    .line 133
    :cond_2
    sget-object v0, Lcom/android/camera/settings/PictureSizeLoader;->TAG:Ljava/lang/String;

    const-string v1, "CamcorderCharacteristics not available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final computePictureSizes()Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;
    .locals 5

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-direct {p0, v0}, Lcom/android/camera/settings/PictureSizeLoader;->computeSizesForCamera(Lcom/android/camera/one/OneCamera$Facing;)Ljava/util/List;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-direct {p0, v1}, Lcom/android/camera/settings/PictureSizeLoader;->computeSizesForCamera(Lcom/android/camera/one/OneCamera$Facing;)Ljava/util/List;

    move-result-object v1

    .line 85
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 86
    invoke-direct {p0, v2}, Lcom/android/camera/settings/PictureSizeLoader;->computeVideoQualitiesForCamera(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 87
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 88
    invoke-direct {p0, v3}, Lcom/android/camera/settings/PictureSizeLoader;->computeVideoQualitiesForCamera(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 89
    new-instance v4, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/settings/PictureSizeLoader$PictureSizes;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    return-object v4
.end method

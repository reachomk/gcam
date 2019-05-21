.class public final Lcom/android/camera/settings/ResolutionSetting;
.super Ljava/lang/Object;
.source "ResolutionSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final resolutionBlackListBack:Ljava/lang/String;

.field private final resolutionBlackListFront:Ljava/lang/String;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "ResolutionSettings"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/settings/ResolutionSetting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/settings/ResolutionSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 35
    iput-object p2, p0, Lcom/android/camera/settings/ResolutionSetting;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 37
    invoke-virtual {p3}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getBlacklistedResolutionsBack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->resolutionBlackListBack:Ljava/lang/String;

    .line 38
    invoke-virtual {p3}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getBlacklistedResolutionsFront()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResolutionSetting;->resolutionBlackListFront:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final getPictureSize(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v0, :cond_3

    .line 96
    const-string v0, "pref_camera_picturesize_front_key"

    .line 99
    :goto_0
    const/4 v2, 0x0

    .line 101
    const-string v1, ""

    .line 102
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v5, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/camera/settings/ResolutionSetting;->resolutionBlackListBack:Ljava/lang/String;

    .line 110
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/camera/settings/ResolutionSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v6, "default_scope"

    .line 111
    invoke-virtual {v5, v6, v0}, Lcom/android/camera/settings/SettingsManager;->isSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 115
    if-eqz v6, :cond_8

    .line 116
    iget-object v2, p0, Lcom/android/camera/settings/ResolutionSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v5, "default_scope"

    .line 118
    invoke-virtual {v2, v5, v0}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lcom/android/camera/util/Size;->fromSettingString(Ljava/lang/String;)Lcom/android/camera/util/Size;

    move-result-object v5

    .line 119
    if-eqz v5, :cond_1

    .line 120
    invoke-static {v5, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isBlackListed(Lcom/android/camera/util/Size;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    move v2, v4

    :goto_2
    move v8, v2

    move-object v2, v5

    move v5, v8

    .line 129
    :goto_3
    if-eqz v2, :cond_6

    .line 130
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    if-lez v7, :cond_6

    .line 132
    :goto_4
    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    if-nez v4, :cond_7

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/android/camera/settings/ResolutionSetting;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 134
    invoke-interface {v2, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    .line 136
    const/16 v3, 0x100

    .line 138
    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    .line 137
    invoke-static {v2, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->filterBlackListedSizes(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/android/camera/util/Size;->largestByArea(Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/camera/settings/ResolutionSetting;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v3, "default_scope"

    .line 145
    invoke-static {v1}, Lcom/android/camera/util/Size;->toSettingString(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/android/camera/settings/ResolutionSetting;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x35

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Picture size setting is not set. Selecting fallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 149
    :goto_5
    return-object v0

    .line 97
    :cond_3
    const-string v0, "pref_camera_picturesize_back_key"

    goto/16 :goto_0

    .line 104
    :cond_4
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p2, v5, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/camera/settings/ResolutionSetting;->resolutionBlackListFront:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 120
    goto :goto_2

    :cond_6
    move v4, v3

    .line 130
    goto :goto_4

    :cond_7
    move-object v0, v2

    goto :goto_5

    :cond_8
    move v5, v3

    goto :goto_3
.end method

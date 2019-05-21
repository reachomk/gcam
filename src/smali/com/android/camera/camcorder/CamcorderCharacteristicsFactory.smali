.class public final Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;
.super Ljava/lang/Object;
.source "CamcorderCharacteristicsFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

.field private final camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "CdrCharFty"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;Lcom/android/camera/camcorder/media/CamcorderProfileFactory;Lcom/android/camera/one/OneCameraManager;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    .line 42
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 43
    iput-object p3, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 44
    return-void
.end method

.method private final getSupportedHfrResolutions(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->hfrValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 108
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->isHfrVideoRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getHfrVideoResolutions()Ljava/util/List;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "query CameraCharacteristics.HfrVideoSizeList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 119
    invoke-static {v0}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->of(Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    move-result-object v6

    .line 123
    iget-object v1, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    invoke-interface {v1, p1, v6}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->hasHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2a

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "CamcorderProfile doesn\'t support quality: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_2
    new-instance v1, Lcom/android/camera/util/Size;

    .line 129
    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    invoke-interface {p2, v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getHfrVideoFpsRanges(Lcom/android/camera/util/Size;)Ljava/util/List;

    move-result-object v7

    .line 130
    sget-object v1, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x35

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "query CameraCharacteristics.HfrVideoFpsRangeList: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "]="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->hfrValues()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 138
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 139
    invoke-interface {v2, p1, v6}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->getHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v2

    .line 140
    iget-object v9, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    invoke-interface {v9, v2, v1, v0}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;->hasCamcorderHfrVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 147
    invoke-virtual {v1}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->getCaptureFrameRate()I

    move-result v10

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v10, v2, :cond_4

    .line 148
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_5
    invoke-static {}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->values()[Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;

    move-result-object v1

    array-length v2, v1

    move v0, v3

    :goto_3
    if-ge v0, v2, :cond_8

    aget-object v5, v1, v0

    .line 161
    iget-object v6, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    invoke-interface {v6, p1, v5}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->hasHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 163
    iget-object v6, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 164
    invoke-interface {v6, p1, v5}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->getHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v5

    .line 165
    invoke-static {v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-interface {v5}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->videoFrameRate()I

    move-result v5

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_7

    .line 167
    const/4 v0, 0x1

    .line 172
    :goto_4
    if-nez v0, :cond_6

    .line 173
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_240:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_6
    return-object v4

    .line 160
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4
.end method

.method private final getSupportedResolutionsForNormalSpeed(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/CamcorderCaptureRate;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/device/CameraId;",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->values()[Lcom/android/camera/camcorder/media/CamcorderProfileQuality;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 84
    invoke-virtual {v4}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->getResolution()Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    move-result-object v5

    .line 89
    iget-object v6, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    invoke-interface {v6, p1, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->hasProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileQuality;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    iget-object v6, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderProfileFactory:Lcom/android/camera/camcorder/media/CamcorderProfileFactory;

    .line 91
    invoke-interface {v6, p1, v4}, Lcom/android/camera/camcorder/media/CamcorderProfileFactory;->getProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v4

    .line 94
    iget-object v6, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->camcorderEncoderProfileFactory:Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;

    invoke-interface {v6, v4, p2, v5}, Lcom/android/camera/camcorder/CamcorderEncoderProfileFactory;->hasCamcorderVideoProfile(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final createCamcorderCharacterisitics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/google/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/device/CameraId;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCharacteristics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 56
    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 62
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_30:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 63
    invoke-direct {p0, p1, v3}, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->getSupportedResolutionsForNormalSpeed(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/CamcorderCaptureRate;)Ljava/util/List;

    move-result-object v3

    .line 62
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    sget-object v3, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 65
    invoke-direct {p0, p1, v3}, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->getSupportedResolutionsForNormalSpeed(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/CamcorderCaptureRate;)Ljava/util/List;

    move-result-object v3

    .line 64
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-direct {p0, p1, v1}, Lcom/android/camera/camcorder/CamcorderCharacteristicsFactory;->getSupportedHfrResolutions(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 72
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    invoke-static {}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->createComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 75
    :cond_1
    new-instance v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/camcorder/CamcorderCharacteristics;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

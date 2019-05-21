.class public final Lcom/android/camera/camcorder/CamcorderCharacteristics;
.super Ljava/lang/Object;
.source "CamcorderCharacteristics.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final supportedResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "CdrCharacteristics"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 32
    iput-object p2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    .line 33
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 34
    sget-object v2, Lcom/android/camera/camcorder/CamcorderCharacteristics;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    .line 39
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "checkResolutionListOrder: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/android/camera/camcorder/CamcorderCharacteristics;->checkResolutionListOrder(Ljava/util/List;)V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method private static checkResolutionListOrder(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    return-void

    .line 114
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 117
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v4

    move-object v6, v0

    :goto_0
    if-ge v2, v7, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v5, v2, 0x1

    check-cast v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    .line 118
    if-eq v0, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 119
    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getArea()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getArea()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-gez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    move v2, v5

    move-object v6, v0

    .line 121
    goto :goto_0

    :cond_2
    move v2, v4

    .line 118
    goto :goto_1

    :cond_3
    move v2, v4

    .line 119
    goto :goto_2
.end method


# virtual methods
.method public final getCameraCharacteristics()Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method public final getSupportedVideoResolutions(Lcom/android/camera/camcorder/CamcorderCaptureRate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final isHfrVideoSupported()Z
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->hfrValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/camcorder/CamcorderCaptureRate;

    .line 85
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTorchAvailable()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public final isVideoResolutionSupported(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderCharacteristics;->supportedResolutionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public final Lcom/android/camera/module/video2/VideoSnapshotSizePicker;
.super Ljava/lang/Object;
.source "VideoSnapshotSizePicker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Vid2SnapshotSize"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/video2/VideoSnapshotSizePicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseVideoSnapshotSize(Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;Ljava/util/List;)Lcom/google/common/base/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/camcorder/CamcorderCaptureRate;",
            "Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 30
    sget-object v0, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->RES_2160P:Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 32
    :goto_0
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, v2, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 34
    sget-object v4, Lcom/android/camera/module/video2/VideoSnapshotSizePicker;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x15

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "supportedImageSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v4

    .line 36
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/util/AspectRatio;->of(Landroid/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/util/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 39
    if-nez v1, :cond_1

    sget-object v4, Lcom/android/camera/camcorder/CamcorderCaptureRate;->FPS_60:Lcom/android/camera/camcorder/CamcorderCaptureRate;

    if-ne p0, v4, :cond_2

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getArea()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :goto_2
    move-object v2, v0

    .line 49
    goto :goto_1

    :cond_3
    move v1, v2

    .line 30
    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 51
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 53
    :goto_3
    return-object v0

    :cond_5
    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

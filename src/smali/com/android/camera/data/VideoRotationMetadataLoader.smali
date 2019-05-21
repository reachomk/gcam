.class public final Lcom/android/camera/data/VideoRotationMetadataLoader;
.super Ljava/lang/Object;
.source "VideoRotationMetadataLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "VidRotDataLoader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/VideoRotationMetadataLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadRotationMetadata(Lcom/android/camera/data/Metadata$Builder;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 22
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 24
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 25
    const/16 v1, 0x18

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    const/16 v4, 0x19

    .line 33
    invoke-virtual {v0, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/camera/data/Metadata$Builder;->setVideoOrientation(Ljava/lang/String;)Lcom/android/camera/data/Metadata$Builder;

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/data/Metadata$Builder;->setVideoWidth(I)Lcom/android/camera/data/Metadata$Builder;

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/data/Metadata$Builder;->setVideoHeight(I)Lcom/android/camera/data/Metadata$Builder;

    .line 39
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/Metadata$Builder;->setVideoCaptureFramerate(I)Lcom/android/camera/data/Metadata$Builder;

    .line 40
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 42
    :cond_0
    sget-object v1, Lcom/android/camera/data/VideoRotationMetadataLoader;->TAG:Ljava/lang/String;

    const-string v2, "Metadata does not exist for the video at "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 47
    sget-object v1, Lcom/android/camera/data/VideoRotationMetadataLoader;->TAG:Ljava/lang/String;

    const-string v2, "VideoRotationMetadataLoader.loadRotationMetadata() failed!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

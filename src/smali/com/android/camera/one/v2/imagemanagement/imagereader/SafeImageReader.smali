.class public final Lcom/android/camera/one/v2/imagemanagement/imagereader/SafeImageReader;
.super Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;
.source "SafeImageReader.java"


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 1

    .prologue
    .line 21
    :try_start_0
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireLatestImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    .locals 1

    .prologue
    .line 31
    :try_start_0
    invoke-super {p0}, Lcom/google/android/apps/camera/proxy/camera2/ForwardingImageReader;->acquireNextImage()Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

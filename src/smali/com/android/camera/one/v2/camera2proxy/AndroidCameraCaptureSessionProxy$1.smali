.class Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;
.super Ljava/lang/Object;
.source "AndroidCameraCaptureSessionProxy.java"

# interfaces
.implements Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy$Factory;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(IIII)Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;
    .locals 4

    .prologue
    .line 1035
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagereader/SafeImageReader;

    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;

    .line 1037
    invoke-static {p1, p2, p3, p4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;-><init>(Landroid/media/ImageReader;B)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/SafeImageReader;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 1035
    return-object v0
.end method

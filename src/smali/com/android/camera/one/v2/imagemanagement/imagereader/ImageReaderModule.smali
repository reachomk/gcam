.class public Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;
.super Ljava/lang/Object;
.source "ImageReaderModule.java"


# instance fields
.field private final imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    .line 16
    return-void
.end method


# virtual methods
.method public final provideImageReader()Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    return-object v0
.end method

.method public final provideSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;->imageReader:Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

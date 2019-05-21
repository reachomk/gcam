.class final Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;
.super Ljava/lang/Object;
.source "ImageBackendThumbnailer.java"


# instance fields
.field private detachableImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private fastThumbnailReceived:Z

.field private imageProcessorListener:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;"
        }
    .end annotation
.end field

.field private intermediateThumbnailReceived:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener$1;-><init>(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)V

    .line 166
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->imageProcessorListener:Lcom/google/common/base/Optional;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagesaver/thumbnail/Thumbnailer;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->imageProcessorListener:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->detachableImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->detachableImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->fastThumbnailReceived:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;Z)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->fastThumbnailReceived:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;)Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->intermediateThumbnailReceived:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;Z)Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->intermediateThumbnailReceived:Z

    return v0
.end method


# virtual methods
.method public final setDetachableImageProcessorListener(Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/thumbnail/ImageBackendThumbnailer$DetachingImageProcessorListener;->detachableImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 212
    return-void
.end method

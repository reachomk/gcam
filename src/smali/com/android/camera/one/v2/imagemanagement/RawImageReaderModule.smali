.class public final Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;
.super Ljava/lang/Object;
.source "RawImageReaderModule.java"


# instance fields
.field private final capacity:I

.field private final prepareImageCount:I

.field private final rawFormat:I

.field private final size:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(IILcom/android/camera/util/Size;I)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->capacity:I

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->prepareImageCount:I

    .line 38
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->size:Lcom/android/camera/util/Size;

    .line 39
    iput p4, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->rawFormat:I

    .line 40
    return-void
.end method


# virtual methods
.method public final provideSharedImageReader(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->size:Lcom/android/camera/util/Size;

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->rawFormat:I

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->capacity:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;->create(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/util/Size;II)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    move-result-object v0

    return-object v0
.end method

.method public final provideSurfacePrepareStartTask(Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;)Lcom/android/camera/one/v2/lifecycle/StartTask;
    .locals 4

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->prepareImageCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 80
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->prepareImageCount:I

    add-int/lit8 v1, v1, -0x3

    .line 81
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;->surface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;ILandroid/view/Surface;Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;)V

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/NullSurfacePreparer;

    invoke-direct {v1}, Lcom/android/camera/one/v2/imagemanagement/imagereader/NullSurfacePreparer;-><init>()V

    iget v2, p0, Lcom/android/camera/one/v2/imagemanagement/RawImageReaderModule;->prepareImageCount:I

    .line 86
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;->surface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/android/camera/one/v2/imagemanagement/PrepareTask;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/SurfacePreparer;ILandroid/view/Surface;Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;)V

    goto :goto_0
.end method

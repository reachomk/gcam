.class final Lcom/android/camera/one/v2/imagemanagement/imagesource/NonSharedImageSourceFactory;
.super Ljava/lang/Object;
.source "NonSharedImageSourceFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;


# instance fields
.field private final imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/NonSharedImageSourceFactory;->imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    .line 24
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/util/Size;II)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/NonSharedImageSourceFactory;->imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;->create(Lcom/android/camera/util/Size;II)Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 37
    invoke-static {}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->builder()Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderModule(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;

    invoke-direct {v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/InfiniteTicketPool;-><init>()V

    invoke-direct {v1, p1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageSourceConfig(Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;->trackInFlightImageSource()Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderImageSourceModule(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->build()Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    move-result-object v0

    .line 37
    return-object v0
.end method

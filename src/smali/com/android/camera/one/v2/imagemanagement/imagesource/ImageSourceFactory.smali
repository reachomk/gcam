.class final Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;
.super Ljava/lang/Object;
.source "ImageSourceFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceProvider;


# instance fields
.field private final imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

.field private final sharedMemoryPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;->sharedMemoryPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;->imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    .line 26
    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/util/Size;II)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;->imageReaderFactory:Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFactory;->create(Lcom/android/camera/util/Size;II)Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 39
    invoke-static {}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->builder()Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;)V

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderModule(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceFactory;->sharedMemoryPool$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBKA1NMUR1R:Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-direct {v1, p1, v2}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageSourceConfig(Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;->trackInFlightImageSource()Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->imageReaderImageSourceModule(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;)Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->build()Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;

    move-result-object v0

    .line 39
    return-object v0
.end method

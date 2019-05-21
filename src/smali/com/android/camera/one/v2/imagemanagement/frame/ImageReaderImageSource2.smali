.class final Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;
.super Ljava/lang/Object;
.source "ImageReaderImageSource2.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;
    }
.end annotation


# instance fields
.field private final imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final maxImageCount:I

.field private final residualTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

.field private final surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V
    .locals 3

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 238
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    .line 239
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 240
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getImageFormat()I

    .line 241
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getMaxImages()I

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->maxImageCount:I

    .line 242
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->surface:Landroid/view/Surface;

    .line 243
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->maxImageCount:I

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 244
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->residualTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    .line 245
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->residualTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->maxImageCount:I

    return v0
.end method


# virtual methods
.method public final varargs createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 6

    .prologue
    .line 264
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 265
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 267
    instance-of v4, v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;

    const-string v5, "ImageReader ImageSources can only be combined with other ImageReaderImageSources of the same type"

    invoke-static {v4, v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2$FrameAllocatorImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getTotalCapacity()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2;->maxImageCount:I

    return v0
.end method

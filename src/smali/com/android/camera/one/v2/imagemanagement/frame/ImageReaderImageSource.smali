.class final Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;
.super Ljava/lang/Object;
.source "ImageReaderImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;
    }
.end annotation


# instance fields
.field private final finiteCapacityPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

.field private final imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

.field private final lifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field private final maxImageCount:I

.field private final residualTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

.field private final surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;)V
    .locals 3

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getMaxImages()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 193
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 194
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getWidth()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 195
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getImageFormat()I

    .line 196
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    .line 201
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getMaxImages()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->maxImageCount:I

    .line 202
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    iget v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->maxImageCount:I

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->finiteCapacityPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    .line 203
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->finiteCapacityPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPoolImpl;-><init>(Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->residualTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    .line 204
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->finiteCapacityPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/FiniteTicketPool;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 205
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->surface:Landroid/view/Surface;

    .line 206
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->residualTicketPool:Lcom/android/camera/one/v2/imagemanagement/ticketpool/ResidualTicketPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/google/android/apps/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->lifetime:Lcom/google/android/apps/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->imageDistributor:Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->maxImageCount:I

    return v0
.end method


# virtual methods
.method public final varargs createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 6

    .prologue
    .line 225
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 226
    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 228
    instance-of v4, v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    const-string v5, "ImageReader ImageSources can only be combined with other ImageReaderImageSources of the same type"

    invoke-static {v4, v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 233
    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource$FrameAllocatorImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getTotalCapacity()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource;->maxImageCount:I

    return v0
.end method

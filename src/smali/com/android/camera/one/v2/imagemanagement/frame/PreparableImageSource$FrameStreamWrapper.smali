.class final Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;
.super Lcom/google/android/apps/camera/async/ForwardingBufferQueue;
.source "PreparableImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/ForwardingBufferQueue",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
        ">;",
        "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;"
    }
.end annotation


# instance fields
.field private final allocator:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/async/ForwardingBufferQueue;-><init>(Lcom/google/android/apps/camera/async/BufferQueue;)V

    .line 199
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->allocator:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    .line 200
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;B)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    return-object v0
.end method


# virtual methods
.method public final getCapacity()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getCapacity()I

    move-result v0

    return v0
.end method

.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->allocator:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->access$500(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->getTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/core/FrameTarget;B)V

    return-object v0
.end method

.method public final increaseCapacity(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->allocator:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    .line 211
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->access$500(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;I)V

    .line 210
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final tryIncreaseCapacity(I)Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->allocator:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->access$500(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;->tryIncreaseCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

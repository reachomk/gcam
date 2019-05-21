.class final Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;
.super Ljava/lang/Object;
.source "PreparableImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameAllocatorWrapper"
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final surfacesPrepared:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;",
            ">;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

    .line 114
    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->access$100(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->dereference(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->surfacesPrepared:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 117
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;B)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->surfacesPrepared:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method


# virtual methods
.method public final createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->surfacesPrepared:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    .line 131
    invoke-interface {v2, p1, p2, p3}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createResidualStore(IILcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;B)V

    .line 130
    return-object v0
.end method

.method public final createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->createStream()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameStream;B)V

    return-object v0
.end method

.method public final getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->surfacesPrepared:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)V

    .line 144
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/camera/async/Observables;->fromFuture(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxFrameCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getMaxFrameCount()I

    move-result v0

    return v0
.end method

.class public final Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;
.super Ljava/lang/Object;
.source "PreparableImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;,
        Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameStreamWrapper;,
        Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;,
        Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

.field private final prepared:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 48
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->prepared:Lcom/google/common/util/concurrent/SettableFuture;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->prepared:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public final varargs createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v3, p1

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 85
    instance-of v5, v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

    invoke-static {v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 86
    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 91
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;

    .line 92
    iget-object v2, v2, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 97
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    .line 96
    invoke-interface {v2, v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    .line 99
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v2, v1, v0, v4}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;B)V

    return-object v2
.end method

.method public final getTotalCapacity()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->getTotalCapacity()I

    move-result v0

    return v0
.end method

.method public final setPrepared(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->prepared:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;->prepared:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method

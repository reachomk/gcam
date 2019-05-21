.class final Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;
.super Ljava/lang/Object;
.source "PreparableImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResidualFrameStoreWrapper"
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

.field private final prepared:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->prepared:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 242
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;B)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->close()V

    .line 263
    return-void
.end method

.method public final dumpFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->dumpFrames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final forkFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->forkFrames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTarget()Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 4

    .prologue
    .line 257
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->prepared:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$ResidualFrameStoreWrapper;->delegate:Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;

    invoke-interface {v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ResidualFrameStore;->getTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/core/FrameTarget;B)V

    return-object v0
.end method

.class final Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;
.super Ljava/lang/Object;
.source "PreparableImageSource.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameTargetWrapper"
.end annotation


# instance fields
.field private final delegate:Lcom/android/camera/one/v2/core/FrameTarget;

.field private final prepared:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/core/FrameTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;",
            "Lcom/android/camera/one/v2/core/FrameTarget;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;->prepared:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 163
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;->delegate:Lcom/android/camera/one/v2/core/FrameTarget;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/core/FrameTarget;B)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/one/v2/core/FrameTarget;)V

    return-void
.end method


# virtual methods
.method public final prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;->prepared:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;->delegate:Lcom/android/camera/one/v2/core/FrameTarget;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameTargets;->nullTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public final prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;->prepared:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameTargetWrapper;->delegate:Lcom/android/camera/one/v2/core/FrameTarget;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/core/FrameTargets;->nullTarget()Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    goto :goto_0
.end method

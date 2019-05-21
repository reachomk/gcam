.class public final Lcom/android/camera/one/v2/core/FreeFrameTarget;
.super Ljava/lang/Object;
.source "FreeFrameTarget.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget;


# instance fields
.field private preparedFrameHandle:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/camera/one/v2/core/FreeFrameTarget$1;

    invoke-direct {v1, v0, p2}, Lcom/android/camera/one/v2/core/FreeFrameTarget$1;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget;->preparedFrameHandle:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    .line 38
    return-void
.end method

.method public static create(Landroid/view/Surface;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/core/FreeFrameTarget;->create(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/FrameTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ")",
            "Lcom/android/camera/one/v2/core/FrameTarget;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/one/v2/core/FreeFrameTarget;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/core/FreeFrameTarget;-><init>(Ljava/util/Set;Lcom/android/camera/one/v2/core/ResponseListener;)V

    return-object v0
.end method


# virtual methods
.method public final prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget;->preparedFrameHandle:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    return-object v0
.end method

.method public final prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FreeFrameTarget;->preparedFrameHandle:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    return-object v0
.end method

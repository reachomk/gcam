.class final Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;
.super Ljava/lang/Object;
.source "FrameTargets.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullFrameTarget"
.end annotation


# instance fields
.field private final NULL_FRAME_HANDLE:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget$1;

    invoke-direct {v0}, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget$1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;->NULL_FRAME_HANDLE:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;->NULL_FRAME_HANDLE:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    return-object v0
.end method

.method public final prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/core/FrameTargets$NullFrameTarget;->NULL_FRAME_HANDLE:Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    return-object v0
.end method

.class final Lcom/android/camera/burst/RingBuffer$1;
.super Ljava/lang/Object;
.source "RingBuffer.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/FrameTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/RingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/RingBuffer;

.field private synthetic val$frameTarget:Lcom/android/camera/one/v2/core/FrameTarget;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/RingBuffer;Lcom/android/camera/one/v2/core/FrameTarget;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/camera/burst/RingBuffer$1;->this$0:Lcom/android/camera/burst/RingBuffer;

    iput-object p2, p0, Lcom/android/camera/burst/RingBuffer$1;->val$frameTarget:Lcom/android/camera/one/v2/core/FrameTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$1;->val$frameTarget:Lcom/android/camera/one/v2/core/FrameTarget;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForRepeatingRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    return-object v0
.end method

.method public final prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$1;->this$0:Lcom/android/camera/burst/RingBuffer;

    invoke-virtual {v0}, Lcom/android/camera/burst/RingBuffer;->tryFreeSlotForImage()V

    .line 205
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer$1;->val$frameTarget:Lcom/android/camera/one/v2/core/FrameTarget;

    invoke-interface {v0}, Lcom/android/camera/one/v2/core/FrameTarget;->prepareForSingleRequest()Lcom/android/camera/one/v2/core/FrameTarget$PreparedFrameHandle;

    move-result-object v0

    return-object v0
.end method

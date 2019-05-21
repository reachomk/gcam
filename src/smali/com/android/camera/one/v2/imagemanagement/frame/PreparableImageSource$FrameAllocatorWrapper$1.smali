.class final Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper$1;
.super Ljava/lang/Object;
.source "PreparableImageSource.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    .line 1149
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper$1;->this$0:Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;->access$400(Lcom/android/camera/one/v2/imagemanagement/frame/PreparableImageSource$FrameAllocatorWrapper;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;->getAvailableCapacity()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    .line 146
    return-object v0
.end method

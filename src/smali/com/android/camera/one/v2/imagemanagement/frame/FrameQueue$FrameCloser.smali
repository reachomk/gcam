.class public final Lcom/android/camera/one/v2/imagemanagement/frame/FrameQueue$FrameCloser;
.super Ljava/lang/Object;
.source "FrameQueue.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/FrameQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameCloser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/frame/Frame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;

    .line 1022
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagemanagement/frame/Frame;->close()V

    .line 19
    return-void
.end method

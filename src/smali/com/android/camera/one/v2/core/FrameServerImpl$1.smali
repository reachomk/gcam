.class Lcom/android/camera/one/v2/core/FrameServerImpl$1;
.super Ljava/lang/Object;
.source "FrameServerImpl.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/android/camera/one/v2/core/FrameRequestProcessor;)Lcom/android/camera/one/v2/core/FrameServer;
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Lcom/android/camera/one/v2/core/FrameServerImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/core/FrameServerImpl;-><init>(Lcom/android/camera/one/v2/core/FrameRequestProcessor;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2029
    check-cast p1, Lcom/android/camera/one/v2/core/FrameRequestProcessor;

    invoke-static {p1}, Lcom/android/camera/one/v2/core/FrameServerImpl$1;->apply(Lcom/android/camera/one/v2/core/FrameRequestProcessor;)Lcom/android/camera/one/v2/core/FrameServer;

    move-result-object v0

    return-object v0
.end method

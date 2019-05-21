.class final Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$1;
.super Ljava/lang/Object;
.source "AsyncStreamConfig.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->deferred(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/util/Size;Ljava/lang/Class;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;
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
        "Landroid/view/Surface;",
        "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$deferredOutputConfig:Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$1;->val$deferredOutputConfig:Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    check-cast p1, Landroid/view/Surface;

    .line 1117
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$1;->val$deferredOutputConfig:Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;->setDeferredSurface(Landroid/view/Surface;)V

    .line 1118
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$1;->val$deferredOutputConfig:Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;

    .line 113
    return-object v0
.end method

.class public final Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;
.super Ljava/lang/Object;
.source "AsyncStreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$AndroidOutputConfig;,
        Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;
    }
.end annotation


# instance fields
.field private final deferredFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;-><init>(ILcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 31
    return-void
.end method

.method private constructor <init>(ILcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 39
    iput-object p3, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->deferredFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 40
    return-void
.end method

.method private static createFuture(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$2;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static deferred(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/android/camera/util/Size;Ljava/lang/Class;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/util/Size;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;"
        }
    .end annotation

    .prologue
    .line 102
    .line 104
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->asSize21()Landroid/util/Size;

    move-result-object v0

    .line 103
    invoke-static {v0, p2}, Lcom/google/android/camera/support/v23/experimental/Experimental;->createOutputConfiguration(Landroid/util/Size;Ljava/lang/Class;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    .line 112
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$1;

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$1;-><init>(Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig$DeferredOutputConfig;)V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 122
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    const/4 v3, -0x1

    .line 124
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;-><init>(ILcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->of(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public static of(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    .line 92
    invoke-static {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->createFuture(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;-><init>(ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 90
    return-object v0
.end method

.method public static of(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;)",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 82
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;

    .line 84
    invoke-static {v2, p0}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->createFuture(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;-><init>(ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public final getDeferredOutputConfiguration()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->deferredFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->deferredFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final getOutputConfiguration()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/OutputConfigurationProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final isDeferred()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;->deferredFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

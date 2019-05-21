.class final Lcom/android/camera/module/capture/CaptureModule$19;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->stopBurst(Lcom/android/camera/burst/BurstFacade$Source;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;

.field final synthetic val$burstStats:Lcom/android/camera/stats/BurstSession;

.field private synthetic val$source:Lcom/android/camera/burst/BurstFacade$Source;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;Lcom/android/camera/burst/BurstFacade$Source;Lcom/android/camera/stats/BurstSession;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iput-object p2, p0, Lcom/android/camera/module/capture/CaptureModule$19;->val$source:Lcom/android/camera/burst/BurstFacade$Source;

    iput-object p3, p0, Lcom/android/camera/module/capture/CaptureModule$19;->val$burstStats:Lcom/android/camera/stats/BurstSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 899
    invoke-static {}, Lcom/android/camera/module/capture/CaptureModule;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error when stopping burst"

    invoke-static {v0, v1, p1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 900
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 857
    check-cast p1, Ljava/lang/Boolean;

    .line 1865
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19;->val$source:Lcom/android/camera/burst/BurstFacade$Source;

    sget-object v1, Lcom/android/camera/burst/BurstFacade$Source;->FORCE_STOP:Lcom/android/camera/burst/BurstFacade$Source;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2700(Lcom/android/camera/module/capture/CaptureModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2700(Lcom/android/camera/module/capture/CaptureModule;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1867
    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModule;->access$2700(Lcom/android/camera/module/capture/CaptureModule;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1866
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1872
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1873
    new-instance v1, Lcom/android/camera/module/capture/CaptureModule$19$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/capture/CaptureModule$19$1;-><init>(Lcom/android/camera/module/capture/CaptureModule$19;)V

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1893
    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModule;->access$1500(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v2

    .line 1873
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 857
    :cond_0
    return-void

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$19;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2700(Lcom/android/camera/module/capture/CaptureModule;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$19;->val$source:Lcom/android/camera/burst/BurstFacade$Source;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0
.end method

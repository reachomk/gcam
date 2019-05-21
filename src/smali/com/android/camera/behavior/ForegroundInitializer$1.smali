.class final Lcom/android/camera/behavior/ForegroundInitializer$1;
.super Ljava/lang/Object;
.source "ForegroundInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/behavior/ForegroundInitializer;->start()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/behavior/ForegroundInitializer;


# direct methods
.method constructor <init>(Lcom/android/camera/behavior/ForegroundInitializer;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/behavior/ForegroundInitializer$1;->this$0:Lcom/android/camera/behavior/ForegroundInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer$1;->this$0:Lcom/android/camera/behavior/ForegroundInitializer;

    invoke-static {v0}, Lcom/android/camera/behavior/ForegroundInitializer;->access$000(Lcom/android/camera/behavior/ForegroundInitializer;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer$1;->this$0:Lcom/android/camera/behavior/ForegroundInitializer;

    invoke-static {v0}, Lcom/android/camera/behavior/ForegroundInitializer;->access$000(Lcom/android/camera/behavior/ForegroundInitializer;)Lcom/android/camera/util/lifetime/ActivityLifetime;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/util/lifetime/ActivityLifetime;->isVisibleLifetimeClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer$1;->this$0:Lcom/android/camera/behavior/ForegroundInitializer;

    invoke-virtual {v0}, Lcom/android/camera/behavior/ForegroundInitializer;->initializeOnce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/android/camera/behavior/ForegroundInitializer$1;->this$0:Lcom/android/camera/behavior/ForegroundInitializer;

    invoke-virtual {v1, v0}, Lcom/android/camera/behavior/ForegroundInitializer;->completeWithException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lcom/android/camera/behavior/ForegroundInitializer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pre-initialization failed, the activity is not in the foreground."

    .line 66
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/behavior/ForegroundInitializer$1;->this$0:Lcom/android/camera/behavior/ForegroundInitializer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/behavior/ForegroundInitializer;->complete(Z)V

    goto :goto_0
.end method

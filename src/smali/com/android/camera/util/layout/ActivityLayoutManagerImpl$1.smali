.class final Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;
.super Ljava/lang/Object;
.source "ActivityLayoutManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$000(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "mInstallListenerRunnable called from post"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$100(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$202(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;I)I

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$208(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)I

    .line 61
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$200(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$000(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "reattempting listener installation via post to main thread"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$400(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v1}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$300(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$000(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Too many retries attempting to attach to ViewRoot, max: 5"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl$1;->this$0:Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;

    invoke-static {v0}, Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;->access$500(Lcom/android/camera/util/layout/ActivityLayoutManagerImpl;)Lcom/android/camera/error/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/error/FatalErrorHandler;->onCameraOpenFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

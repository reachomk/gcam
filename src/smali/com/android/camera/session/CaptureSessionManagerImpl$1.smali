.class final Lcom/android/camera/session/CaptureSessionManagerImpl$1;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionManagerImpl;->fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

.field private synthetic val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 388
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v3}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackableSession;

    .line 389
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getSessionType()Lcom/android/camera/session/CaptureSession$SessionType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V

    .line 390
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionProgress(Landroid/net/Uri;I)V

    .line 391
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getProgressMessage()Lcom/android/camera/ui/UiString;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

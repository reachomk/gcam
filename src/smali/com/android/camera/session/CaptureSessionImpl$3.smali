.class final Lcom/android/camera/session/CaptureSessionImpl$3;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->saveAndFinish(Ljava/io/InputStream;Lcom/android/camera/session/MediaInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/session/CaptureSessionImpl;

.field private synthetic val$cachedPlaceholder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

.field private synthetic val$data:Ljava/io/InputStream;

.field private synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

.field private synthetic val$info:Lcom/android/camera/session/MediaInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/android/camera/session/MediaInfo;Ljava/io/InputStream;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$cachedPlaceholder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$info:Lcom/android/camera/session/MediaInfo;

    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$data:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$cachedPlaceholder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$info:Lcom/android/camera/session/MediaInfo;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$data:Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Lcom/android/camera/session/MediaInfo;Ljava/io/InputStream;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$500(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$000(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 548
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionImpl;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 549
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$700(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$500(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionImpl;->access$600(Lcom/android/camera/session/CaptureSessionImpl;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Ljava/util/List;)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    const-string v1, "capturePersisted"

    invoke-static {v0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    .line 556
    :goto_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$500(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 557
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-static {}, Lcom/android/camera/session/CaptureSessionImpl;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to persist image!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$200(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 553
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    const-string v1, "captureFailed"

    invoke-static {v0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$3;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionImpl;->finishWithFailure(Lcom/android/camera/ui/UiString;Z)V

    goto :goto_1
.end method

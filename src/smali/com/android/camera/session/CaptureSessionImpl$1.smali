.class final Lcom/android/camera/session/CaptureSessionImpl$1;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;


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

.field private synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaSaved(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$000(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 503
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-virtual {v0}, Lcom/android/camera/session/CaptureSessionImpl;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 504
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    const-string v1, "capturePersisted"

    invoke-static {v0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 510
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$200(Lcom/android/camera/session/CaptureSessionImpl;)V

    .line 507
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    const-string v1, "captureFailed"

    invoke-static {v0, v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;Ljava/lang/String;)V

    goto :goto_0
.end method

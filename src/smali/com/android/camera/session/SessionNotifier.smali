.class public Lcom/android/camera/session/SessionNotifier;
.super Ljava/lang/Object;
.source "SessionNotifier.java"


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl;)V
    .locals 0

    .prologue
    .line 2052
    iput-object p1, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl;B)V
    .locals 0

    .prologue
    .line 3052
    invoke-direct {p0, p1}, Lcom/android/camera/session/SessionNotifier;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl;)V

    return-void
.end method


# virtual methods
.method public notifySessionCaptureIndicatorAvailable(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$9;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1227
    return-void
.end method

.method public notifySessionPictureDataAvailable([BI)V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$11;-><init>(Lcom/android/camera/session/SessionNotifier;[BI)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1257
    return-void
.end method

.method public notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$10;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$10;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method

.method public notifySessionUpdated(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$8;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1203
    return-void
.end method

.method public notifyTaskCanceled(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1127
    return-void
.end method

.method public notifyTaskDone(Landroid/net/Uri;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$2;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1090
    return-void
.end method

.method public notifyTaskFailed(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$3;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1111
    return-void
.end method

.method public notifyTaskFocused(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$5;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1146
    return-void
.end method

.method public notifyTaskProgress(Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1165
    return-void
.end method

.method public notifyTaskProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
    .locals 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$7;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1184
    return-void
.end method

.method public notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/camera/session/SessionNotifier;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$1;-><init>(Lcom/android/camera/session/SessionNotifier;Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1070
    return-void
.end method

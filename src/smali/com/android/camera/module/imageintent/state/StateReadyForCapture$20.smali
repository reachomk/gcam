.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSessionCanceled(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public final onSessionCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public final onSessionDone(Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
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
    .line 655
    return-void
.end method

.method public final onSessionFailed(Landroid/net/Uri;Lcom/android/camera/ui/UiString;Z)V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public final onSessionFocused(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public final onSessionPictureDataUpdate([BI)V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3800(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;[BI)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 643
    return-void
.end method

.method public final onSessionProgress(Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public final onSessionProgressText(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public final onSessionQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession$SessionType;)V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public final onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$3700(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method public final onSessionUpdated(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

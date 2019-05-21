.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/burst/BurstA11yButtonController$Listener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 5

    .prologue
    .line 385
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;

    .line 1388
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1600(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1390
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;)V

    .line 1391
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1398
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 1400
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    .line 1401
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1402
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)V

    .line 1398
    :goto_0
    return-object v0

    .line 1404
    :cond_0
    const/4 v0, 0x0

    .line 385
    goto :goto_0
.end method

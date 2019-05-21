.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;
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
    .line 354
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 5

    .prologue
    .line 354
    check-cast p1, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;

    .line 1361
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1100(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1102(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;Z)Z

    .line 1365
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1400(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    .line 1366
    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getMainThread()Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10$1;-><init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;)V

    .line 1367
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1374
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    .line 1376
    invoke-static {v2}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$000(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/RefCountBase;

    move-result-object v2

    .line 1377
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;->getPictureBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1378
    invoke-virtual {p1}, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;->getPictureData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/module/imageintent/state/StateReviewingPicture;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;Lcom/google/android/apps/camera/async/RefCountBase;Landroid/graphics/Bitmap;Lcom/google/common/base/Optional;)V

    goto :goto_0
.end method

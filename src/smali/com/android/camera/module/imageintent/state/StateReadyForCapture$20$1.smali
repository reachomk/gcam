.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->onSessionThumbnailUpdate(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

.field private synthetic val$thumbnailBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;->val$thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$1;->val$thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/android/camera/module/imageintent/event/EventFastPictureBitmapAvailable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 628
    return-void
.end method

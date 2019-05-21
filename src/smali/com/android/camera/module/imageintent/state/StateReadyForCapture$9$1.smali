.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;

.field private synthetic val$pictureData:[B

.field private synthetic val$pictureOrientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;[BI)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;

    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->val$pictureData:[B

    iput p3, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->val$pictureOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->val$pictureData:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->val$pictureOrientation:I

    const/4 v3, 0x0

    .line 337
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->decode([BIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;

    iget-object v1, v1, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v1}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;

    iget-object v3, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$9$1;->val$pictureData:[B

    invoke-direct {v2, v0, v3}, Lcom/android/camera/module/imageintent/event/EventPictureDecoded;-><init>(Landroid/graphics/Bitmap;[B)V

    .line 343
    invoke-interface {v1, v2}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->onSessionPictureDataUpdate([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

.field private synthetic val$orientation:I

.field private synthetic val$pictureData:[B


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;[BI)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

    iput-object p2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;->val$pictureData:[B

    iput p3, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->getStateMachine()Lcom/android/camera/fsm/StateMachine;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;

    iget-object v2, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;->val$pictureData:[B

    iget v3, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$20$2;->val$orientation:I

    invoke-direct {v1, v2, v3}, Lcom/android/camera/module/imageintent/event/EventPictureCompressed;-><init>([BI)V

    invoke-interface {v0, v1}, Lcom/android/camera/fsm/StateMachine;->processEvent(Ljava/lang/Object;)V

    .line 641
    return-void
.end method

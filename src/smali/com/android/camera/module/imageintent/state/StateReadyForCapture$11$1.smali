.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$11;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1500(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getImageIntentStatechart()Lcom/android/camera/ui/controller/ImageIntentStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onImageReadyForReview()V

    .line 396
    return-void
.end method

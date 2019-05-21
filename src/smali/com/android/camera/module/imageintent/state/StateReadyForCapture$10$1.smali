.class final Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10$1;
.super Ljava/lang/Object;
.source "StateReadyForCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10$1;->this$1:Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;

    iget-object v0, v0, Lcom/android/camera/module/imageintent/state/StateReadyForCapture$10;->this$0:Lcom/android/camera/module/imageintent/state/StateReadyForCapture;

    invoke-static {v0}, Lcom/android/camera/module/imageintent/state/StateReadyForCapture;->access$1300(Lcom/android/camera/module/imageintent/state/StateReadyForCapture;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/imageintent/state/ImageIntentContext;

    invoke-virtual {v0}, Lcom/android/camera/module/imageintent/state/ImageIntentContext;->getImageIntentStatechart()Lcom/android/camera/ui/controller/ImageIntentStatechart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->onImageReadyForReview()V

    .line 372
    return-void
.end method

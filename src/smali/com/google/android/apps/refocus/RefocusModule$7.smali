.class final Lcom/google/android/apps/refocus/RefocusModule$7;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$7;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final triggerShutter(Z)V
    .locals 2

    .prologue
    .line 317
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$7;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$000$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TP6APJFCDQN6BQICLJ6UORLED6MUP3LDHIJMAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BRICLJ6UORLECNL4PB6DTHNASQDDTI7AR354H9N8OBKCKTG____(Lcom/google/android/apps/refocus/RefocusModule;)I

    move-result v0

    sget v1, Lcom/google/android/apps/refocus/RefocusModule$State;->PREVIEW$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFE9IMCRR3ELPIUKJ5CPNM6TBJ9LNM8TBCCKI56T31EHIJM___:I

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$7;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-virtual {v0}, Lcom/google/android/apps/refocus/RefocusModule;->onShutterButtonClick()V

    .line 320
    :cond_0
    return-void
.end method

.method public final zoomIn(Z)V
    .locals 1

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$7;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomIn()F

    .line 334
    :cond_0
    return-void
.end method

.method public final zoomOut(Z)V
    .locals 1

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$7;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v0}, Lcom/google/android/apps/refocus/RefocusModule;->access$1100(Lcom/google/android/apps/refocus/RefocusModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/ui/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraAppUI;->zoomOut()F

    .line 327
    :cond_0
    return-void
.end method

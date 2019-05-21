.class public Lcom/android/camera/ui/PauseResumeButton$PauseResumeButtonListener;
.super Ljava/lang/Object;
.source "PauseResumeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PauseResumeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PauseResumeButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ShutterButtonHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShutterButtonHolder;)V
    .locals 0

    .prologue
    .line 2294
    iput-object p1, p0, Lcom/android/camera/ui/PauseResumeButton$PauseResumeButtonListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 4

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/camera/ui/PauseResumeButton$PauseResumeButtonListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->access$700(Lcom/android/camera/ui/ShutterButtonHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder$RecordingControlsListener;

    .line 1298
    iget-object v2, p0, Lcom/android/camera/ui/PauseResumeButton$PauseResumeButtonListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v2}, Lcom/android/camera/ui/ShutterButtonHolder;->access$800(Lcom/android/camera/ui/ShutterButtonHolder;)Lcom/android/camera/ui/PrimaryShutterButton;

    move-result-object v2

    const v3, 0x3f2a7efa    # 0.666f

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->setScale(F)V

    .line 1299
    invoke-interface {v0}, Lcom/android/camera/ui/ShutterButtonHolder$RecordingControlsListener;->onPauseButtonClicked()V

    goto :goto_0

    .line 1301
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/camera/ui/PauseResumeButton$PauseResumeButtonListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->access$700(Lcom/android/camera/ui/ShutterButtonHolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder$RecordingControlsListener;

    .line 1306
    iget-object v2, p0, Lcom/android/camera/ui/PauseResumeButton$PauseResumeButtonListener;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v2}, Lcom/android/camera/ui/ShutterButtonHolder;->access$800(Lcom/android/camera/ui/ShutterButtonHolder;)Lcom/android/camera/ui/PrimaryShutterButton;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/PrimaryShutterButton;->setScale(F)V

    .line 1307
    invoke-interface {v0}, Lcom/android/camera/ui/ShutterButtonHolder$RecordingControlsListener;->onResumeButtonClicked()V

    goto :goto_0

    .line 1309
    :cond_0
    return-void
.end method

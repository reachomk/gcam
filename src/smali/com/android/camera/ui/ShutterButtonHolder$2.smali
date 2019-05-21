.class final Lcom/android/camera/ui/ShutterButtonHolder$2;
.super Ljava/lang/Object;
.source "ShutterButtonHolder.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ShutterButtonHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ShutterButtonHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShutterButtonHolder;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/camera/ui/ShutterButtonHolder$2;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButtonHolder$2;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

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

    .line 235
    invoke-interface {v0}, Lcom/android/camera/ui/ShutterButtonHolder$RecordingControlsListener;->onSnapshotButtonClicked()V

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method public final onShutterButtonFocus(Z)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final onShutterButtonLongPressRelease()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final onShutterButtonLongPressed()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

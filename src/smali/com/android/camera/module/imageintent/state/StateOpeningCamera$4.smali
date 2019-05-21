.class final Lcom/android/camera/module/imageintent/state/StateOpeningCamera$4;
.super Ljava/lang/Object;
.source "StateOpeningCamera.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/imageintent/state/StateOpeningCamera;
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
.field private synthetic this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/imageintent/state/StateOpeningCamera;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$4;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic processEvent(Ljava/lang/Object;)Lcom/android/camera/fsm/State;
    .locals 2

    .prologue
    .line 168
    .line 1171
    invoke-static {}, Lcom/android/camera/module/imageintent/state/StateOpeningCamera;->access$2100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processOnCameraOpenFailure"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v0, Lcom/android/camera/module/imageintent/state/StateFatal;

    iget-object v1, p0, Lcom/android/camera/module/imageintent/state/StateOpeningCamera$4;->this$0:Lcom/android/camera/module/imageintent/state/StateOpeningCamera;

    invoke-direct {v0, v1}, Lcom/android/camera/module/imageintent/state/StateFatal;-><init>(Lcom/android/camera/module/imageintent/state/ImageIntentState;)V

    .line 168
    return-object v0
.end method
